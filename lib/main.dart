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
  double currentSliderValue = 0;
  int currentWieghtValue = 0;
  int currentAgeValue = 0;
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
                  ),
                  //2nd container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
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
                  ),
                  //2nd container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF313143),
                    ),
                    height: 210,
                    width: 170,
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE73D65)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "CALCULAT",
                      style: TextStyle(fontSize: 30),
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
