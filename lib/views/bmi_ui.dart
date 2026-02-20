// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class BmiUi extends StatefulWidget {
  const BmiUi({super.key});

  @override
  State<BmiUi> createState() => _BmiUiState();
}

class _BmiUiState extends State<BmiUi> {
//สร้างตัวควบคุม Textfield
  TextEditingController weighCtrl = TextEditingController();
  TextEditingController heightCtrl = TextEditingController();

//สร้างตัวแปร เก็บค่าBMI และ การแปลผล
  double bmiValue = 0;
  String bmiResult = 'การแปลผล';


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 40,
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  'คำนวณหาค่าดัฃนีมวลกาย (BMI)',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/bmi.png',
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'น้ำหนัก (kg.)',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: weighCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText:'กรุณากรอกน้ำหนัก',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'ส่วนสูง (cm.)',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: heightCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText:'กรุณากรอกส่วนสูง',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: (){
                    //Validate input
                    if(weighCtrl.text.isEmpty|| heightCtrl.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('กรุณาป้อนน้ำหนักส่วนสูงให้ครบ'), 
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2),
                        ),
                      );

                      return;
                    }
                    //คำนวณBMI
                    double w = double.parse(weighCtrl.text);
                    double h = double.parse(heightCtrl.text);
                    double bmi = w / ((h/100) * (h/100));
                    setState(() {
                      bmiValue = bmi;
                    });

                    //แปลผล
                    setState(() {
                      if(bmi < 18.5){
                        bmiResult = 'น้ำหนักคุณน้อยไป';
                      }else if (bmi < 22.9){
                        bmiResult = 'หุ่นปกติ';
                      }else if (bmi < 24.9){
                        bmiResult = 'เริ่มอ้วน';
                      }else if (bmi < 29.9){
                        bmiResult = 'โรคอ้วนระยะที่ 1';
                      }else if (bmi < 39.9){
                        bmiResult = 'โรคอ้วนระยะที่ 2';
                      }else {
                        bmiResult = 'โรคอ้วนระยะสุดท้าย';
                      }
                    });
                  }, 
                  child: Text(
                    'ตำนวณ BMI',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55.0
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      weighCtrl.clear(); heightCtrl.clear(); bmiValue = 0; bmiResult = 'การแปลผล';
                    });
                  }, 
                  child: Text(
                    'ล้างข้อมูล',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55.0
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'BMI',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bmiValue.toStringAsFixed(2),
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}