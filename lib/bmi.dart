import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter7/result.dart';
class BmiCalcltor extends StatefulWidget
{



  @override
  _BmiCalcltorState createState() => _BmiCalcltorState();
}

class _BmiCalcltorState extends State<BmiCalcltor> {
  bool ismale = true ;
  double slider = 120.0 ;
  int weight = 60 ;
  int Age = 20 ;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Bmi Calculator' ,

        ),
      ),
      body:Container(
        color: Colors.black,
        child: Column(
          children:
          [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            ismale = true ;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: ismale ? Colors.blueGrey[900] : Colors.grey[400],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            const [
                              Image(
                                image: AssetImage('images/male.png'),
                                width: 70,
                                height: 70,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 30.0 ,
                                  fontWeight: FontWeight.bold

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            ismale = false ;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: ismale ? Colors.grey : Colors.blueGrey[900],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            const [
                              Image(image:
                              AssetImage('images/female.png'),
                                width: 70,
                                height: 70,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 30.0 ,
                                  fontWeight: FontWeight.bold

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      const Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 30.0 ,
                          fontWeight: FontWeight.w900 ,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                        [
                          Text(
                            '${slider.round()}' ,
                            style: const TextStyle(
                              fontSize: 40.0 ,
                              fontWeight: FontWeight.w700 ,
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          const Text(
                            'cm' ,
                            style: TextStyle(
                              fontSize: 20.0 ,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        inactiveColor : Colors.black ,
                        activeColor: Colors.teal[700],
                        value: slider,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value)
                        {
                          setState(() {
                            slider = value ;
                          });


                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[400], ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Text(
                              'weight',
                              style: TextStyle(
                                fontSize: 30.0 ,
                                fontWeight: FontWeight.w900 ,
                              ),
                            ),
                            Text(
                              '$weight' ,
                              style: const TextStyle(
                                fontSize: 40.0 ,
                                fontWeight: FontWeight.w700 ,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                } ,
                                  heroTag:'weight-',
                                  backgroundColor: Colors.teal[500],
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove ,
                                  ),),
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                } ,
                                  heroTag:'weight+',
                                  backgroundColor: Colors.teal[500],
                                  mini: true,
                                  child: const Icon(
                                    Icons.add ,

                                  ),),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[400], ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 30.0 ,
                                fontWeight: FontWeight.w900 ,
                              ),
                            ),
                            Text(
                              '$Age' ,
                              style: const TextStyle(
                                fontSize: 40.0 ,
                                fontWeight: FontWeight.w700 ,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    Age-- ;
                                  });
                                } ,
                                  heroTag: 'Age_',
                                  backgroundColor: Colors.teal[500],
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove ,
                                  ),),
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    Age++;
                                  });
                                } ,
                                  heroTag: 'Age+',
                                  backgroundColor: Colors.teal[500],
                                  mini: true,
                                  child: const Icon(
                                    Icons.add ,
                                  ),),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.teal
              ),
              width: double.infinity,
              height: 50.0 ,
              child: MaterialButton(onPressed: ()
              {
                double result = weight /pow(slider/100, 2);
                print(result.round()) ;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Result(
                  ismale: ismale,
                  Age: Age,
                  height: slider,
                  weight: weight,
                  /*result:result.round(),*/
                )),
                );
              },
                child: const Text(
                  'CALCULATE' ,
                  style: TextStyle(
                    fontSize: 20.0 ,
                    fontWeight: FontWeight.bold

                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
          ],
        ),
      ),

    );
  }
}