import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calclater/CustumButton.dart';
import 'package:flutter_application_1/Calclater/constants.dart';

class CalclHome extends StatefulWidget {
  const CalclHome({Key? key}) : super(key: key);

  @override
  _CalclHomeState createState() => _CalclHomeState();
}

class _CalclHomeState extends State<CalclHome> {
  String exp = '';
  String history = '';
  double num1 = 0;
  double num2 = 0;
  String op = '';

  void numClick(String btnTxt) {
    if (btnTxt == 'Ac') {
      setState(() {
        exp = '';
        history = '';
      });
      num1 = 0;
      num2 = 0;
    } else if (btnTxt == 'C') {
      setState(() {
        exp = '';
      });
    } else if (btnTxt == '+' ||
        btnTxt == '-' ||
        btnTxt == '/' ||
        btnTxt == 'x' ||
        btnTxt == '%') {
      op = btnTxt;
      num1 = double.parse(exp);

      setState(() {
        exp = '';
        history = num1.toString();
        history += btnTxt;
      });
    } else if (btnTxt == '.') {
      if (exp.contains('.')) {
      } else {
        setState(() {
          exp += btnTxt;
        });
      }
    } else if (btnTxt == '=') {
      num2 = double.parse(exp);
      history += exp;

      switch (op) {
        case '+':
          {
            exp = (num1 + num2).toString();
          }
          break;
        case 'x':
          {
            exp = (num1 * num2).toString();
          }
          break;
        case '-':
          {
            exp = (num1 - num2).toString();
          }
          break;
        case '%':
          {
            exp = (num1 % num2).toString();
          }
          break;
        case '/':
          {
            num2 == 0
                ? exp = 'unvalid operation '
                : exp = (num1 / num2).toString();
          }
          break;

        default:
          break;
      }
      setState(() {});
    } else {
      setState(() {
        exp += btnTxt;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              margin: Constants.txtMargin,
              alignment: Constants.txtAlinment,
              child: Text(
                history,
                style: Constants.style1,
              )),
          const Divider(
            color: Colors.grey,
            thickness: 5,
          ),
          Container(
              margin: Constants.txtMargin,
              alignment: Constants.txtAlinment,
              child: Text(
                exp,
                style: Constants.style1,
              )),
          Row(
            children: [
              CustumButton(
                btnColor: Color.fromARGB(255, 5, 42, 73),
                btnTxt: "Ac",
                callBack: numClick,
              ),
              CustumButton(
                btnColor: Color.fromARGB(255, 5, 8, 177),
                btnTxt: "C",
                callBack: numClick,
              ),
              CustumButton(
                btnColor: Color.fromARGB(255, 100, 119, 231),
                btnTxt: "%",
                callBack: numClick,
              ),
              CustumButton(
                btnColor: Color.fromARGB(255, 189, 195, 247),
                btnTxt: "/",
                callBack: numClick,
              ),
            ],
          ),
          Row(
            children: [
              CustumButton(
                btnColor: Color.fromARGB(255, 255, 157, 9),
                btnTxt: "7",
                callBack: numClick,
              ),
              CustumButton(
                btnColor: Color.fromARGB(255, 245, 167, 50),
                btnTxt: "8",
                callBack: numClick,
              ),
              CustumButton(
                btnColor: Color.fromARGB(255, 240, 183, 99),
                btnTxt: "9",
                callBack: numClick,
              ),
              CustumButton(
                btnColor: Color.fromARGB(255, 240, 201, 144),
                btnTxt: "x",
                callBack: numClick,
              ),
            ],
          ),
          Row(children: [
            CustumButton(
              btnColor: Color.fromARGB(255, 9, 83, 11),
              btnTxt: "4",
              callBack: numClick,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 11, 104, 14),
              btnTxt: "5",
              callBack: numClick,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 6, 165, 11),
              btnTxt: "6",
              callBack: numClick,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 111, 211, 115),
              btnTxt: "-",
              callBack: numClick,
            ),
          ]),
          Row(children: [
            CustumButton(
              btnColor: Color.fromARGB(255, 243, 33, 138),
              btnTxt: "1",
              callBack: numClick,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 241, 76, 131),
              btnTxt: "2",
              callBack: numClick,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 245, 108, 153),
              btnTxt: "3",
              callBack: numClick,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 231, 172, 192),
              btnTxt: "+",
              callBack: numClick,
            ),
          ]),
          Row(children: [
            CustumButton(
              btnColor: Color.fromARGB(255, 1, 73, 66),
              btnTxt: "0",
              callBack: numClick,
              flex: 2,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 7, 196, 177),
              btnTxt: ".",
              callBack: numClick,
            ),
            CustumButton(
              btnColor: Color.fromARGB(255, 98, 238, 224),
              btnTxt: "=",
              callBack: numClick,
            ),
          ]),
        ],
      ),
    );
  }
}
