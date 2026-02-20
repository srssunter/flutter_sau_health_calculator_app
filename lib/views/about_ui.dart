import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                'Body Health Calculator',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/calculator.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'คำนวณหาค่าดัชนีมาลกาย (BMI)',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'คำนวณหาค่าแคลอรี่ที่ร่างกายต้องการในแต่ละวัน (BMR)',
              ),
              SizedBox(
                height: 180,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Logosau-02.png/250px-Logosau-02.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Developed by NinniN SAU 2026',
              ),
            ],
          ),
        ),
      ),
    );
  }
}