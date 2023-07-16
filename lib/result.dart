
import 'package:flutter/material.dart';
import 'bmi.dart';

class Result extends StatefulWidget {
  final Age,weight,height,ismale;

  Result({required this.Age,required this.weight,required this.height,required this.ismale});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bmi_calculate();
    bmi_status();
  }
  late double bmi;
  String status='';
  bmi_calculate(){
    bmi=(widget.weight / widget.height / widget.height ) * 10000;
    print(bmi);
  }
  bmi_status(){
    if(bmi<18.5)
      status = 'UNDER WEIGHT';
    else if(bmi>=18.5 && bmi<=24.9)
      status = 'NORMAL';
    else if(bmi>=25 && bmi<=29.9)
      status = 'OVER WEIGHT';
    else
      status = 'OBESITY';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.grey, Colors.blueGrey])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 130,),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(22)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Text('BMI RESULT',style: TextStyle(
                      color: Colors.teal[800],
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 30,),
                    Text(bmi.toStringAsFixed(1),style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 30,),
                    Text(status,style: TextStyle(
                      color: Colors.teal[200],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 40,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiCalcltor()));
                      },
                      child: Text('RE-CALCULATE',style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          primary: Colors.teal
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}