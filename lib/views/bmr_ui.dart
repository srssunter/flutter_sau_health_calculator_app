// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class BmrUi extends StatefulWidget {
  const BmrUi({super.key});

  @override
  State<BmrUi> createState() => _BmrUiState();
}

class _BmrUiState extends State<BmrUi> {
//สร้างตัวแปรเพื่อเก็บสถานะการเลือกเพศ
  String genderStatus = 'ชาย';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 40,
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  'คำนวณหาอัตราการเผาผลาญที่ร่างกายต้องการ (BMR)',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/exercise.png',
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text('เพศ'),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            genderStatus = 'ชาย';
                          });
                        },
                        child: Text(
                          'ชาย',
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8.0),
                          ),
                          backgroundColor: genderStatus == 'ชาย'? Colors.blue[200] : Colors.white,
                          fixedSize: Size(
                            double.infinity,
                            50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            genderStatus = 'หญิง';
                          });
                        },
                        child: Text(
                          'หญิง',
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8.0),
                          ),
                          backgroundColor: genderStatus == 'หญิง'? Colors.pink[200]: Colors.white,
                          fixedSize: Size(
                            double.infinity,
                            50,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'กรุณากรอกน้ำหนัก',
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'กรุณากรอกส่วนสูง',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'อายุ (ปี)',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'กรุณากรอกอายุของคุณ',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ตำนวณ BMR',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    fixedSize: Size(MediaQuery.of(context).size.width, 55.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ล้างข้อมูล',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: Size(MediaQuery.of(context).size.width, 55.0),
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
                        'BMR',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '0.00',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'kcal/day',
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
