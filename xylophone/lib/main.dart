import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

void note(int n) {
  final player = AudioPlayer();
  player.setSource(
    AssetSource('assets_note$n.wav'),
  );
  player.play(
    AssetSource('assets_note$n.wav'),
  );
}

void xylokey() {
  Expanded(
    child: Container(
      color: Colors.orange,
      child: TextButton(
        onPressed: () {
          note(2);
        },
        child: Text(
          'D',
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Center(child: Text('Xylophone')),
            backgroundColor: Color.fromARGB(255, 25, 25, 25),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                xyloKey(),
                xyloKey(),
              ],
            ),
          )),
    );
  }
}
