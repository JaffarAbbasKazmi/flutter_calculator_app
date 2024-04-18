import 'package:demopone/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'Constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var  userinput = "s";
  var answer;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child:Column(
          children: [
             Expanded(
              flex: 1,
                child: Column(
                  children: [
                   Center(child: Text(
                      userinput,
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 22,
                     color: Colors.white),
                    ),
                   ),
                    Center(child: Text(
                      answer,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        color:Colors.white
                      ),
                    ),
                    )
                  ],
                )
            ),
            Expanded(
              flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButon(title: numberNine, color: greyColor , onPress: () {
                          calculateResult(userinput , numberNine);
                          setState(() {

                          });
                        }),
                        MyButon(title: numberEight, color: greyColor, onPress: () {
                          calculateResult(userinput , numberEight);
                          setState(() {

                          });
                        }),
                        MyButon(title: numberSeven, color: greyColor, onPress: () {
                          calculateResult(userinput , numberSeven);
                          setState(() {

                          });
                        }),
                        MyButon(title: signPlus, color: orangeColor, onPress: () {
                          calculateResult(userinput , signPlus);
                          setState(() {

                          });
                        })
                      ],
                    ),
                    Row(
                      children: [
                        MyButon(title: numberSix, color: greyColor, onPress: () {
                          calculateResult(userinput , numberSix);
                          setState(() {

                          });
                        }),
                        MyButon(title: numberFive, color: greyColor, onPress: () {
                          calculateResult(userinput , numberFive);
                          setState(() {

                          });
                        }),
                        MyButon(title: numberFour, color: greyColor, onPress: () {
                          calculateResult(userinput , numberFour);
                          setState(() {

                          });
                        }),
                        MyButon(title: signMinus, color: orangeColor, onPress: () {
                          calculateResult(userinput , signMinus);
                          setState(() {

                          });
                        })
                      ],
                    ),
                    Row(
                      children: [
                        MyButon(title: numberThree, color: greyColor, onPress: () {
                          calculateResult(userinput , numberThree);
                          setState(() {

                          });
                        }),
                        MyButon(title: numberTwo, color: greyColor, onPress: () {
                          calculateResult(userinput , numberTwo);
                          setState(() {

                          });
                        }),
                        MyButon(title: numberOne, color: greyColor, onPress: () {
                          calculateResult(userinput , numberOne);
                          setState(() {

                          });
                        }),
                        MyButon(title: signmultiply, color: orangeColor, onPress: () {
                          calculateResult(userinput , signmultiply);
                          setState(() {

                          });
                        })
                      ],
                    ),
                    Row(
                      children: [
                        MyButon(title: signClearAll, color: greyColor, onPress: () {
                          clearTextFromRightToLeft();
                        }),
                        MyButon(title: numberZero, color: greyColor, onPress: () {
                          calculateResult(userinput , numberZero);
                          setState(() {

                          });
                        }),
                        MyButon(title: signEqual, color: greyColor, onPress: () {
                          equalToFunc();
                        }),
                        MyButon(title: signDivide, color: orangeColor, onPress: () {
                          calculateResult(userinput , signDivide);
                          setState(() {

                          });
                        })
                      ],
                    )
                  ],
                ))
          ],
        ) ,
        )
      )
      )
    );
  }
  void calculateResult(String userPreviousInputvalue , String newNumberToBeAdded) {
    userinput = userinput + newNumberToBeAdded;
  }
  void equalToFunc() {
    //we will use package here to get the commulative result
    Parser p = Parser();
    Expression exp = p.parse(userinput);
    ContextModel contextModel = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
    setState(() {

    });
  }
  void clearTextFromRightToLeft()
  {
    //we will clear the when user press the AC button from R to L side
    userinput = userinput.substring(0 , userinput.length-1);
    setState(() {

    });
  }
}
