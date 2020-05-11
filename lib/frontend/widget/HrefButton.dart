import 'package:flutter/material.dart';
import 'dart:html' as html;

class HrefButton extends StatelessWidget {

  final String url;

  HrefButton(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 50.0,
      child: RaisedButton(
        onPressed: () {
          html.window.location.href =
              url;
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF3366FF), Color(0xFF00CCFF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Lihat Statistik Harian",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
