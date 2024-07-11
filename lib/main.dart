import 'package:flutter/material.dart';
import 'package:ui_practices_app/checkbox/checkbox.dart';
import 'package:ui_practices_app/data_time_picker/data_time_picker.dart';
import 'package:ui_practices_app/radio/radio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const HomeScren());
  }
}

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio and Checkbox'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckboxExample()));
                },
                child: const Text('Checkbox')),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RadioExample()));
                },
                child: const Text('Radio')),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DataTimeScreen()));
                },
                child: const Text('DateTime Picker')),
          )
        ],
      ),
    );
  }
}
