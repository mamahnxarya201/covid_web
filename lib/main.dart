import 'package:covid_web/backend/providers/coronaProvider.dart';
import 'package:covid_web/frontend/Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CoronaProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Pantau COVID-19',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

// return MaterialApp(
//       title: 'Flutter Pantau COVID-19',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomeScreen(),
//     );
//   }
