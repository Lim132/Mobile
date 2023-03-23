import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          title: Center(
              child: Text("Ask Me Anything")
          ),
          backgroundColor: Colors.lightBlue.shade900,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);
  @override  State<BallPage> createState() => _BallPageState();

}
class _BallPageState extends State<BallPage> {
  int ballNumber = 0;

  @override  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                    print('New ball number is $ballNumber');
                  });
                },
                child: ballNumber == 0
                    ? Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/img.png',
                        height: 200,
                        width: 200,
                      ),
                      Text(
                        'Press the button to see your future',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Georgia',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
                    : Image.asset(
                  'images/ball$ballNumber.png',
                  height: 300,
                  width: 300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}