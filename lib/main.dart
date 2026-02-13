import 'package:flutter/material.dart';
import 'package:flutter_sau_health_calculator_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterSauHealthCalculatorapp(),
  );
}

class FlutterSauHealthCalculatorapp extends StatefulWidget {
  const FlutterSauHealthCalculatorapp({super.key});

  @override
  State<FlutterSauHealthCalculatorapp> createState() =>
      _FlutterSauHealthCalculatorappState();
}

class _FlutterSauHealthCalculatorappState
    extends State<FlutterSauHealthCalculatorapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
