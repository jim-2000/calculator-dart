import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final filcolor;
  final double textSize;
  final Function callback;

  CalculatorButton({
    required this.text,
    this.filcolor,
    required this.textSize,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        height: 70,
        width: 70,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              filcolor == 0 ? Colors.amber.shade900 : Colors.blue.shade600,
            ),
          ),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
