import 'package:covid_web/frontend/widget/GradientAppBar.dart';
import 'package:covid_web/frontend/widget/HrefButton.dart';
import 'package:covid_web/frontend/widget/KotakIndonesia.dart';
import 'package:flutter/material.dart';
import 'package:covid_web/backend/providers/coronaProvider.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () =>
            Provider.of<CoronaProvider>(context, listen: false).getData(),
        child: FutureBuilder(
          future: Provider.of<CoronaProvider>(context, listen: false).getData(),
          builder: (context, snapshot) {
            // Jika masih loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Tampilkan loading indicator
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            // Tampilkan Widget dengan data
            return Consumer<CoronaProvider>(builder: (context, data, _) {
              return Container(
                color: Color(0xFF3E3963),
                child: Column(
                  children: <Widget>[
                    // Appbar jadi jadian :v
                    GradientAppBar("Flutter COVID-19"),
                    // Header Text
                    Text(
                      "DATA KASUS COVID-19 DI INDONESIA",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 36.0),
                    ),
                    Container(
                      child: KotakIndonesia(data: data),
                    ),
                    HrefButton()
                  ],
                ),
              );
            });
          },
        ),
      ),
    );
  }
}

// body: Container(
//         padding: EdgeInsets.all(32.0),
//         child: Column(
//           children: <Widget>[
//             Text("DATA KASUS COVID-19 DI INDONESIA"),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(
//                     width: 300,
//                     height: 170,
//                     child: Card(
//                       margin: EdgeInsets.all(10.0),
//                       child: Center(
//                         child: ListTile(
//                           title: Text(
//                             "12396",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 60),
//                           ),
//                           subtitle: Text(
//                             "Kasus",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 40),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 300,
//                     height: 170,
//                     child: Card(
//                       margin: EdgeInsets.all(10.0),
//                       child: Center(
//                         child: ListTile(
//                           title: Text(
//                             "12000",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 60),
//                           ),
//                           subtitle: Text(
//                             "Sembuh",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 40),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 300,
//                     height: 170,
//                     child: Card(
//                       margin: EdgeInsets.all(10.0),
//                       child: Center(
//                         child: ListTile(
//                           title: Text(
//                             "3000",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 60),
//                           ),
//                           subtitle: Text(
//                             "Meninggal",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 40),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text("Stay dirumah Gays Entar kenak corona mati F"),
//           ],
//         ),
//       ),
