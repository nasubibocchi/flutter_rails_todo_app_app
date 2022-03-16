import 'dart:convert';

import 'package:flutter/services.dart';

late AppConfig appConfig;

class AppConfig {
  AppConfig({required this.dataBaseUrl});

  final String dataBaseUrl;

  static Future<void> load() async {
    final contents = await rootBundle.loadString('assets/config/dev.json');
    final json = jsonDecode(contents);

    appConfig = AppConfig(dataBaseUrl: json['dataBaseUrl']);
  }
}
