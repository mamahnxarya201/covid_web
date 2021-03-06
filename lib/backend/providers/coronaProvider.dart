import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:covid_web/backend/models/IndonesiaModel.dart';
import 'package:covid_web/backend/models/WorldModel.dart';

class CoronaProvider with ChangeNotifier {
  IndonesiaModel summary; // State untuk menampung data indonesia
  WorldModel world; // State untuk menampung data dunia
  String updated; // State untuk menampung data update

  // API call
  Future<void> getData() async {
    final url = 'https://kawalcovid19.harippe.id/api/summary';
    final response = await http.get(url);
    // Convert data
    final result = json.decode(response.body) as Map<String, dynamic>;
    // serialisasi via model
    summary = IndonesiaModel(
      confirmed: result['confirmed']['value'],
      recovered: result['recovered']['value'],
      deaths: result['deaths']['value'],
      activeCare: result['activeCare']['value'],
    );
    // Simpan update ke lastupdate
    updated = result['metadata']['lastUpdatedAt'];

    // State terubah render ulang
    notifyListeners();
  }
}
