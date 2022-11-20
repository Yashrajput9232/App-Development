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
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: const Center(child: Text('Ask Me anything')),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  int pic = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
             pic = Random().nextInt(5) + 1; 
              setState(() {
                
              });
            },
            child: Image.asset('images/ball$pic.png'),
          ))
        ],
      ),
    );
  }
}