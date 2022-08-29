import 'package:flutter/material.dart';
import './kuis.dart';
import './hasil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  var soalIndex = 0;
  var totalSkor = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'Siapa nama anda?',
      'jawaban': [
        {'teks': 'udin', 'skor': 10},
        {'teks': 'joni', 'skor': 15},
        {'teks': 'roni', 'skor': 20},
        {'teks': 'sapar', 'skor': 25},
      ]
    },
    {
      'pertanyaan': 'Apa warna kesukaan anda?',
      'jawaban': [
        {'teks': 'merah', 'skor': 10},
        {'teks': 'kuning', 'skor': 15},
        {'teks': 'hijau', 'skor': 20},
        {'teks': 'biru', 'skor': 25},
      ]
    },
    {
      'pertanyaan': 'Apa hobi anda?',
      'jawaban': [
        {'teks': 'mancing', 'skor': 10},
        {'teks': 'healing', 'skor': 15},
        {'teks': 'jogging', 'skor': 20},
        {'teks': 'climbing', 'skor': 25},
      ]
    },
    {
      'pertanyaan': 'Dimana anda lahir?',
      'jawaban': [
        {'teks': 'disini', 'skor': 10},
        {'teks': 'disana', 'skor': 15},
        {'teks': 'didepan', 'skor': 20},
        {'teks': 'dibelakang', 'skor': 25},
      ]
    },
    {
      'pertanyaan': 'Apa status anda?',
      'jawaban': [
        {'teks': 'tidak ada', 'skor': 10},
        {'teks': 'tak berstatus', 'skor': 15},
        {'teks': 'status aja', 'skor': 20},
        {'teks': 'kepo', 'skor': 25},
      ]
    },
  ];

  void resetKuis() {
    setState(() {
      soalIndex = 0;
      totalSkor = 0;
    });
  }

  void _actionJawaban(int skor) {
    setState(() {
      soalIndex += 1;
      totalSkor += skor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Kuis'),
        ),
        body: soalIndex < pertanyaan.length
            ? Kuis(
                actionJawaban: _actionJawaban,
                pertanyaan: pertanyaan,
                soalIndex: soalIndex,
              )
            : Hasil(totalSkor, resetKuis),
      ),
    );
  }
}
