// import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/first_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  int Result = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF0A0E21),
          title: Center(
            child: Text(
              'BMI CALCULATOR',
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top: 25),
              child: Text(
                "Your Result",
                style: normalResultTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: resultPageTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIResultTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ],
                ),
              )),
          // Expanded(
          //   child: Container(
          //     // height: MediaQuery.of(context).size.height / 6,
          //     width: MediaQuery.of(context).size.height / 2,
          //     // height: 100,
          //     // width: 50,
          //     margin: const EdgeInsets.all(15),
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10),
          //         color: activeCardColor),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(30),
          //           child: Text(
          //             'Normal',
          //             style:
          //                 TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
          //           ),
          //         ),
          //         SizedBox(
          //           height: 50,
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(30),
          //           child: Text(
          //             Result.toString(),
          //             style: boldTextStyle,
          //           ),
          //         ),
          //         SizedBox(
          //           height: 50,
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(30),
          //           child: Text(
          //             'description',
          //             style: labelTextStyle,
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => BmiApp()));
            },
            child: Container(
              decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(20),
                  //     bottomRight: Radius.circular(20)),
                  color: bottomContainerColor),
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
              child: const Center(
                  child: Text(
                'RE-CALCULATE',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              )),
            ),
          )
        ],
      ),
    );
  }
}
