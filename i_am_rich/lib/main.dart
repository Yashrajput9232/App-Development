import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 61, 61),
        appBar: AppBar(
          title: Center(child: Text('I am Rich')),
          backgroundColor: Color.fromARGB(255, 0, 255, 255),
        ),
        body: Column(
          children: [
            Center(
              child: Image( 
                  height: 400,
                  image: AssetImage(
                    "assets/images/diamond.png",
                  )),
            ),
            Center(
              child: const Text(
                'Lorem Ipsum dolor sit amet consectur adipiscing elit',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
