import 'package:flutter/material.dart';
import 'package:covid_web/frontend/widget/KotakData.dart';

class KotakIndonesia extends StatelessWidget {
  final data;

  KotakIndonesia({
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        KotakData(
          total: data.summary.confirmed.toString(),
          label: "Jumlah Kasus",
          color: Color(0xFF434273),
        ),
        KotakData(
          total: data.summary.deaths.toString(),
          label: "Meninggal",
          color: Color(0xFF434273),
        ),
        KotakData(
          total: data.summary.recovered.toString(),
          label: "Sembuh",
          color: Color(0xFF434273),
        ),
      ],
    );
  }
}
