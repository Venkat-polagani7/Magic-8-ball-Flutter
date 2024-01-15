import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        ),
        home: Ball(),
      ),
    );

class Ball extends StatelessWidget {
  const Ball({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Ask Me Anything",
                style: TextStyle(
                  color: Colors.white,

                ),),
            Icon(Icons.sports_basketball),
          ],
        ),
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber=1;
  void predictNextImage(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                predictNextImage();
                print("$ballNumber displayed");
              },
              child: Image.asset('images/ball$ballNumber.png',
                // height: 500,
                // width: 420,
              ),
              //Image(image: AssetImage('images/ball1.png'),
              ),
          ),
        ],
      ),
      );
  }
}




