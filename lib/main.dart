import 'package:flutter/material.dart';
import 'package:yapi_kredi_mobil/ana_ekran.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaEkran(),
    );
  }
}
