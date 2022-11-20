import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Center(
              child: Text('My Card',style: TextStyle(
                fontFamily: 'Play',
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),),
            )
          ),
      backgroundColor: Color.fromARGB(255, 21, 21, 21),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              heightFactor: 1.5,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('image/yash.jpeg'),
              ),
            ),
            Text(
              'Yash Rajput',
            style: TextStyle(
              fontFamily: 'Play',
              color: Colors.white,
              fontSize: 35
              ),
              ),
            Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(color: Color.fromARGB(255, 219, 150, 150),
                fontFamily: 'Play',
                fontSize: 18,
                fontWeight: FontWeight.w700
                ),
                ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.phone,
                    size: 25,
                    color: Colors.black,),
                    Text(' +91750 34021',style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Play',
                      ),
                      )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.email,
                    size: 25,
                    color: Color.fromARGB(255, 21, 21, 21),),
                    Text(' yrajput_b21@el.vjti.ac.in',style: TextStyle(
                      color: Color.fromARGB(255, 21, 21, 21),
                      fontSize: 20,
                      fontFamily: 'Play',
                      ),
                      )
                  ],
                ),
              ),
            )
        ]),
        ),
       )
     );
  }
}
