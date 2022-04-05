import 'package:bmi_vip_flutter/constants/constants.dart';
import 'package:bmi_vip_flutter/widgets/left_rounded.dart';
import 'package:bmi_vip_flutter/widgets/right_rounded.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _weightCotroller = TextEditingController();

  final _heightCotroller = TextEditingController();

  double resultBMI = 0;
  String resutlBMIInText = '';
  double widhtDeath = 50;
  double widthLife = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *avoid over flow when keyboard in open
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          ' BMI محاسبه گر',
          style: TextStyle(
            color: blackText,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // *weight & height
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: _weightCotroller,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                          color: Colors.deepOrange[100],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: _heightCotroller,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد',
                        hintStyle: TextStyle(
                          color: Colors.deepOrange[100],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              // ?clac btn
              InkWell(
                onTap: () {
                  final weight = double.parse(_weightCotroller.text);
                  final height = double.parse(_heightCotroller.text) / 100;
                  setState(() {
                    resultBMI = weight / (height * height);
                    if (resultBMI > 25) {
                      widhtDeath = 250;
                      widthLife = 50;
                      resutlBMIInText = 'شما اضافه وزن دارید';
                    } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                      resutlBMIInText = 'وزن شما نرمال است';
                      widthLife = 250;
                      widhtDeath = 50;
                    } else {
                      resutlBMIInText = 'نیاز به افزایش وزن دازید';
                      widhtDeath = 30;
                      widthLife = 30;
                    }
                  });
                },
                child: Text(
                  'حساب کن',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              // *show bmi number
              Text(
                resultBMI.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              //  *show result text
              Text(
                resutlBMIInText,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 80),
              // *red bar
              RightRounded(width: widhtDeath),
              SizedBox(height: 20),
              // *green bar
              LeftRounded(width: widthLife),
            ],
          ),
        ),
      ),
    );
  }
}
