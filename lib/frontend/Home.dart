import 'package:covid_web/frontend/widget/GradientAppBar.dart';
import 'package:covid_web/frontend/widget/HrefButton.dart';
import 'package:covid_web/frontend/widget/KotakIndonesia.dart';
import 'package:flutter/material.dart';
import 'package:covid_web/backend/providers/coronaProvider.dart';
import 'package:provider/provider.dart';

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
            return Consumer<CoronaProvider>(
              builder: (context, data, _) {
                return ListView(
                  children: [
                    Container(
                      color: Color(0xFF3E3963),
                      child: Column(
                        children: <Widget>[
                          // Appbar jadi jadian :v
                          GradientAppBar("Flutter COVID-19"),
                          // Header Text
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "DATA KASUS COVID-19 DI INDONESIA",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 36.0,
                            ),
                          ),
                          Container(
                            child: KotakIndonesia(data: data),
                          ),
                          // Spasi kecil kecilan
                          SizedBox(
                            height: 10,
                          ),
                          HrefButton(
                            "https://kawalcovid19.blob.core.windows.net/viz/statistik_harian.html",
                          ),
                          // Spasi kecil kecilan
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            "Cegah Penyebaran COVID-19 Dengan Cara Berikut",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 36.0,
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            "Rajin Cuci Tangan",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 35.0,
                            ),
                          ),
                          SizedBox(height: 40),
                          Image(
                            image: AssetImage('img/cuci_tangan.png'),
                            width: 500.0,
                            height: 500.0,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Virus Corona menyebar lewat Droplet.",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 30.0,
                            ),
                          ),
                          Text(
                            "Droplet ini dapat menempel di tangan",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 30.0,
                            ),
                          ),
                          Text(
                            "maka dari itu rajin mencuci tangan dapat membunuh virus ini",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            "Gunakan Masker Saat Keluar",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 35.0,
                            ),
                          ),
                          Image.asset(
                            'img/masker.png',
                            fit: BoxFit.fitWidth,
                            // scale: 0.6,
                            width: 600.0,
                            height: 650.0,
                          ),
                          Text(
                            "Virus dapat masuk melalui lubang pernapasan",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 30.0,
                            ),
                          ),
                          Text(
                            "Kita juga dapat menularkan virus ke orang lain",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            "Terapkan Social Distancing",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 35.0,
                            ),
                          ),
                          Image.asset(
                            'img/social_distancing.png',
                            // fit: BoxFit.fitWidth,
                            // scale: 9.0,
                            width: 600.0,
                            height: 650.0,
                          ),
                          Text(
                            "Menjaga jarak saat berinteraksi",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 30.0,
                            ),
                          ),

                          Text(
                            "Agar virus droplet dari virud tidak menyebar",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Jost',
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
