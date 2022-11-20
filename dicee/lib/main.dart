import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.blueAccent,
        ),
        body: Dicepage(),
      ),
    );
  }
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int left = 4;
  int right = 1;
  void dice() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                dice();
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                dice();
              });
            },
            child: Image.asset('images/dice$right.png'),
          ))
        ],
      ),
    );
  }
}
