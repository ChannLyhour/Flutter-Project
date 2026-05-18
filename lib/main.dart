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
        //  1 . Leading ប៊ូតុងខាងឆ្វេង
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'សួស្តី Hour Dev Kh !',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'KantumruyPro',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ចំនួនដែលអ្នកបានចុច៖',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontFamily: 'KhmerOSBattambang',
              ),
            ),
          ],
        ),
      ),

      // 🟢 បន្ថែមប៊ូតុងចុច (Floating Action Buttons) នៅខាងក្រោមស្តាំ
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // ប៊ូតុង បូកលេខ
          FloatingActionButton(
            onPressed: _incrementCounter, // ហៅ function បូកលេខ
            heroTag: 'btn1',
            backgroundColor: const Color(0xFF10B981),
            child: const Icon(Icons.add, color: Colors.white),
          ),
          const SizedBox(height: 10),
          // ប៊ូតុង Reset លេខមក ០ វិញ
          FloatingActionButton(
            onPressed: _resetCounter, // ហៅ function reset
            heroTag: 'btn2',
            backgroundColor: Colors.redAccent,
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black45,
                  blurRadius: 8.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // ប៊ូតុង Reset លេខមក ០ វិញ
          FloatingActionButton(
            onPressed: _resetCounter,
            heroTag: 'btn2',
            backgroundColor: Colors.amberAccent,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
              // 👇 បន្ថែមស្រមោលទៅឲ្យ Icon នៅត្រង់នេះ
              shadows: [
                Shadow(
                  color: Colors.black45, // ពណ៌របស់ស្រមោល (ខ្មៅស្រាល)
                  blurRadius: 8.0, // កម្រិតព្រិលរបស់ស្រមោល
                  offset: Offset(
                    2.0,
                    2.0,
                  ), // ទិសដៅស្រមោល (X: ទៅស្ដាំ 2, Y: ចុះក្រោម 2)
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // ប៊ូតុង Reset លេខមក ០ វិញ
          FloatingActionButton(
            onPressed: _resetCounter, // ហៅ function reset
            heroTag: 'btn2',
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.home,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black54,
                  blurRadius: 8.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
