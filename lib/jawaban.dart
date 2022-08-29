import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  // const Jawaban({Key? key}) : super(key: key);

  var actionJawaban;
  var jawabanText;

  Jawaban(this.actionJawaban, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: actionJawaban,
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
        ),
        child: Text(jawabanText),
      ),
    );
  }
}
