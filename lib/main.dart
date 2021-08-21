import 'package:calculator/calculatorButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int firstNum;
  late int seconNum;
  String history = '';
  String textToDisplay = '';
  late String res;
  late String oparation;

  //
  void btnOnclick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      seconNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      seconNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      seconNum = 0;
      res = '';
      oparation = btnVal;
    } else if (btnVal == '=') {
      seconNum = int.parse(textToDisplay);
      if (oparation == '+') {
        res = (firstNum + seconNum).toString();
        history =
            firstNum.toString() + oparation.toString() + seconNum.toString();
      } else if (oparation == '-') {
        res = (firstNum - seconNum).toString();
        history =
            firstNum.toString() + oparation.toString() + seconNum.toString();
      }
      if (oparation == 'X') {
        res = (firstNum * seconNum).toString();
        history =
            firstNum.toString() + oparation.toString() + seconNum.toString();
      }
      if (oparation == '/') {
        res = (firstNum / seconNum).toString();
        history =
            firstNum.toString() + oparation.toString() + seconNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "jimis calculator",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey[800],
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    history,
                    style: TextStyle(
                        color: Colors.blueGrey.shade200, fontSize: 45),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "AC",
                    filcolor: 1,
                    textSize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "C",
                    filcolor: 1,
                    textSize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "<",
                    filcolor: 0,
                    textSize: 26,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "/",
                    filcolor: 0,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "9",
                    filcolor: 1,
                    textSize: 25.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "8",
                    filcolor: 1,
                    textSize: 25.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "7",
                    filcolor: 1,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "X",
                    filcolor: 0,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "6",
                    filcolor: 1,
                    textSize: 25.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "5",
                    filcolor: 1,
                    textSize: 25.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "4",
                    filcolor: 1,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "+",
                    filcolor: 0,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "3",
                    filcolor: 1,
                    textSize: 25.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "2",
                    filcolor: 1,
                    textSize: 25.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "1",
                    filcolor: 1,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "-",
                    filcolor: 0,
                    textSize: 30.5,
                    callback: btnOnclick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "+/-",
                    filcolor: 1,
                    textSize: 24.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "0",
                    filcolor: 1,
                    textSize: 25.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "00",
                    filcolor: 1,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: "=",
                    filcolor: 0,
                    textSize: 26.5,
                    callback: btnOnclick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
