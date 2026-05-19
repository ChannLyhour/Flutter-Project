import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterLearningHubApp());
}

class FlutterLearningHubApp extends StatelessWidget {
  const FlutterLearningHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hour Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF10B981),
          brightness: Brightness.dark,
        ),
      ),
      home: const CounterHomeScreen(),
    );
  }
}

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
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            print('Menu Click');
          },
        ),
        title: const Text('Welcome Hour Dev !'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () => print('Search Click'),
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => print('Notification Clicked'),
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      // 🟢 ដក const ចេញពី Center ដើម្បីបង្ហាញតម្លៃលេខប្រែប្រួលបាន
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'សួស្តី Hour Dev Kh !',
              textAlign: TextAlign.center,
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
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontFamily: 'KhmerOSBattambang',
              ),
            ),
            const SizedBox(height: 10),
            // 🟢 បន្ថែម Text នេះដើម្បីបង្ហាញលេខ Counter
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

      // 🟢 បានកែសម្រួល heroTag មិនឱ្យជាន់គ្នា (btn1, btn2, btn3, btn4)
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // ប៊ូតុង បូកលេខ
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
          // ប៊ូតុង Reset លេខមក ០ វិញ
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
          const SizedBox(height: 10),
          // ប៊ូតុង កាមេរ៉ា
          FloatingActionButton(
            onPressed: () => print('Camera Clicked'),
            heroTag: 'btn3', // កែពី btn2 មក btn3
            backgroundColor: Colors.amberAccent,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
              shadows: _iconShadow,
            ),
          ),
          const SizedBox(height: 5),
          // ប៊ូតុង Home ខាងក្រោម
          FloatingActionButton(
            onPressed: () => print('Home Clicked'),
            heroTag: 'btn4', // កែពី btn2 មក btn4
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.home,
              color: Colors.white,
              shadows: _iconShadow,
            ),
          ),
        ],
      ),
    );
  }
}