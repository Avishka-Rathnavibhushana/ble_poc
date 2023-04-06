import 'package:ble_poc/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final value1 = "0x" + "22";
    final value1_decimal = int.parse(
      value1,
    ).toString();
    print(value1_decimal);
    return MaterialApp(
      title: 'BLE POC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterBlueApp(),
    );
  }
}
