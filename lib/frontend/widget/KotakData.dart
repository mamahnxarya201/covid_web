import 'package:flutter/material.dart';

class KotakData extends StatelessWidget {
  final String total;
  final String label;
  final Color color;

  // Inisialisasi final variabel
  // Nantinya akan dikirim ke Provider
  KotakData({
    @required this.total,
    @required this.label,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 170,
      child: Card(
        color: color,
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: ListTile(
            title: Text(
              total,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
                color: Color(0xFFFFFFFF),
              ),
            ),
            subtitle: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF9895C3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
