import 'package:flutter/material.dart';
import 'CurrencyConverterscreen.dart';

void main() {
  runApp(const MyCurrencyConverterApp());
}

class MyCurrencyConverterApp extends StatelessWidget {
  const MyCurrencyConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Converter App',
      home: Currencyconverterscreen(),
    );
  }
}
