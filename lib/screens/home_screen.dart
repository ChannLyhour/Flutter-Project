import 'package:flutter/material.dart';
import '../widgets/app_navigation_drawer.dart';

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});

  @override
  State<CounterHomeScreen> createState() => _CounterHomeScreenState();
}

class _CounterHomeScreenState extends State<CounterHomeScreen> {
  static const List<Shadow> _iconShadow = [
    Shadow(color: Colors.black87, blurRadius: 9.0, offset: Offset(4.0, 2.0)),
  ];

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        title: const Text('Welcome Hour Dev !'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      drawer: const AppNavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'សួស្តី Hour Dev Kh !',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'KantumruyPro',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'ចំនួនដែលអ្នកបានចុច៖',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontFamily: 'KhmerOSBattambang',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            heroTag: 'btn1',
            backgroundColor: const Color(0xFF10B981),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              shadows: _iconShadow,
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _resetCounter,
            heroTag: 'btn2',
            backgroundColor: Colors.redAccent,
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
              shadows: _iconShadow,
            ),
          ),
        ],
      ),
    );
  }
}
