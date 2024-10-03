import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int n) async {
      final player = AudioPlayer();
      await player.play(AssetSource('note$n.wav'));
  }

  Expanded keyNote({required Color color,required int sound}){
     return Expanded(
       child: TextButton(
                  onPressed: () async {
                    playSound(sound);
                  },
                  child: SizedBox.shrink(),
                  style: TextButton.styleFrom(
                      backgroundColor: color,
                      minimumSize: Size(50, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                ),
     );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             
              keyNote(color:Colors.red, sound:1),
              keyNote(color: Colors.blue, sound:2),
              keyNote(color: Colors.green, sound:3),
              keyNote(color: Colors.yellow, sound:4),
              keyNote(color: Colors.pink, sound:5),
              keyNote(color: Colors.grey, sound:6),
              keyNote(color: Colors.black, sound:7)   
            ],
          ),
          
         
        ),
      ),
    );
  }
}
