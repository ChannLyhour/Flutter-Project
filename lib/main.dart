import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // 🟢 Points to the screens directory

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
