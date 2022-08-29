import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({ Key? key }) : super(key: key);
  var totalSkor;
  var resetKuis;
  Hasil(this.totalSkor, this.resetKuis);

  // Getter

  String get hasilText {
    String hasil = 'Anda Berhasil';

    if (totalSkor <= 20) {
      hasil = 'Anda Gagal';
    } else if (totalSkor <= 40) {
      hasil = 'Anda Kurang Beruntung';
    } else if (totalSkor <= 60) {
      hasil = 'Anda Cukup Aja';
    } else if (totalSkor <= 80) {
      hasil = 'Anda Memuaskan';
    } else if (totalSkor <= 100) {
      hasil = 'Terlalu';
    } else {
      hasil = 'Yasudahlah';
    }

    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetKuis,
            child: Text('Mulai lagi'),
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
