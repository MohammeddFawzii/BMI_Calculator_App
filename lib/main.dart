import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalc());
}

class BmiCalc extends StatefulWidget {
  const BmiCalc({super.key});

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  double iconSizeMale = 80;
  double iconSizeFemale = 80;
  double currentSliderValue = 0;
  int currentWieghtValue = 0;
  int currentAgeValue = 0;
  String button = "CALCULAT";
  double bmiValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF1C2035),
        //app bar
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C2035),
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //1st container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    //container content
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              iconSizeMale = 100;
                              iconSizeFemale = 80;
                            });
                          },
                          child: Icon(
                            Icons.male,
                            color: Colors.white,
                            size: iconSizeMale,
                          ),
                        ),
                        const Text(
                          "MALE",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  //2nd container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    // container content
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              iconSizeMale = 80;
                              iconSizeFemale = 100;
                            });
                          },
                          child: Icon(
                            Icons.female,
                            color: Colors.white,
                            size: iconSizeFemale,
                          ),
                        ),
                        const Text(
                          "FEMALE",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              //slider container
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF313143),
                ),
                height: 200,
                width: 360,
                //container content
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${currentSliderValue.toInt()}",
                            style: const TextStyle(
                                fontSize: 60, color: Colors.white),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: const SliderThemeData(trackHeight: 2),
                        child: Slider(
                          value: currentSliderValue,
                          min: 0,
                          max: 300,
                          divisions: 300,
                          label: currentSliderValue.round().toString(),
                          activeColor: const Color(0xFFE73D65),
                          inactiveColor: Colors.grey,
                          onChanged: (double value) {
                            setState(() {
                              currentSliderValue = value;
                            });
                          },
                        ),
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //1st container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    //container content
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        Text(
                          currentWieghtValue.toString(),
                          style: const TextStyle(
                              fontSize: 60, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (currentWieghtValue > 0) {
                                    currentWieghtValue--;
                                  } else {
                                    currentWieghtValue = 0;
                                  }
                                });
                              },
                              backgroundColor: const Color(0xFF5C5E6E),
                              child: const Icon(
                                Icons.remove,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  currentWieghtValue = currentWieghtValue + 10;
                                });
                              },
                              backgroundColor: const Color(0xFF5C5E6E),
                              child: const Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  //2nd container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
                    // container content
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        Text(
                          currentAgeValue.toString(),
                          style: const TextStyle(
                              fontSize: 60, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (currentAgeValue > 0) {
                                    currentAgeValue--;
                                  } else {
                                    currentAgeValue = 0;
                                  }
                                });
                              },
                              backgroundColor: const Color(0xFF5C5E6E),
                              child: const Icon(
                                Icons.remove,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  currentAgeValue++;
                                });
                              },
                              backgroundColor: const Color(0xFF5C5E6E),
                              child: const Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //button
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bmiValue = currentWieghtValue /
                          ((currentSliderValue / 100) *
                              (currentSliderValue / 100));
                      button = bmiValue.toStringAsFixed(2);

                      if (currentAgeValue == 0 ||
                          currentSliderValue == 0 ||
                          currentWieghtValue == 0) {
                        button = "Pls Enter UR Data First";
                      }
                      if (iconSizeFemale == iconSizeMale) {
                        button = "Choose UR Type, Press Again";
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE73D65)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      button,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
