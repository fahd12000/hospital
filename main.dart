import 'package:app_3/home.dart';
// import 'package:app_3/page_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      locale: Locale('ar', 'AE'),
    ),
  );
}
