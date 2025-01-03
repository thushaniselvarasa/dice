import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: DiceRollApp(),
  ));
}

class DiceRollApp extends StatefulWidget {
  const DiceRollApp({super.key});

  @override
  State<DiceRollApp> createState() => _DiceRollAppState();
}

class _DiceRollAppState extends State<DiceRollApp> {
  String path = 'assets/images/dice-1.png'; // Initial dice image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'DICE ROLL APP!',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                color: Colors.black.withOpacity(0.41),
              ),
            ),
            Image.asset(
              path, // Display the dynamic dice image
              height: 225,
              width: 225,
            ),
            GestureDetector(
              onTap: printRanNum, // Call function when tapped
              child: Container(
                height: 51,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 29, 46, 29),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    'ROLL DICE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void printRanNum() {
    // Generate a random number between 1 and 6
    int randNumber = Random().nextInt(6) + 1;
    setState(() {
      // Update the path based on the random number
      path = 'assets/images/dice-$randNumber.png';
    });
  }
}
