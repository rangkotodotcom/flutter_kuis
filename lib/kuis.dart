import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  // const Kuis({Key? key}) : super(key: key);
  var actionJawaban;
  var soalIndex;
  // List<Map<String, Object>> pertanyaan;
  var pertanyaan;

  Kuis({
    @required this.actionJawaban,
    @required this.pertanyaan,
    @required this.soalIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(pertanyaan[soalIndex]['pertanyaan']),
        ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(
              () => actionJawaban(jawabanText['skor']), jawabanText['teks']);
        }).toList(),
      ],
    );
  }
}
