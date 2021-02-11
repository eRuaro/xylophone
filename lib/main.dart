import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class ColorButton extends StatelessWidget {
  ColorButton({this.color, this.noteNumber});
  final Color color;
  final int noteNumber;

  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
        child: Text(''),
      ),
    );
  }
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('A Very Ugly Xylophone'),
          backgroundColor: Colors.blueGrey[600],
        ),
        body: SafeArea(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ColorButton(
                color: Colors.blue[600],
                noteNumber: 1,
              ),
              ColorButton(
                color: Colors.red[600],
                noteNumber: 2,
              ),
              ColorButton(
                color: Colors.yellow[600],
                noteNumber: 3,
              ),
              ColorButton(
                color: Colors.green[600],
                noteNumber: 4,
              ),
              ColorButton(
                color: Colors.purple[600],
                noteNumber: 5,
              ),
              ColorButton(
                color: Colors.orange[600],
                noteNumber: 6,
              ),
              ColorButton(
                color: Colors.teal[600],
                noteNumber: 7,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
