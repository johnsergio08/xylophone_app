import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());


void playSound(int A){
  final player = AudioPlayer();
  player.play(AssetSource('note$A.wav'));
}

Expanded keys(int A, Color color){
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),

        ),
        onPressed: (){
          playSound(A);

        },
        child: Container(
        )
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              keys(1,Colors.red),
              keys(2,Colors.orange),
              keys(3,Colors.yellow),
              keys(4,Colors.green),
              keys(5,Colors.teal),
              keys(6,Colors.blue),
              keys(7,Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
