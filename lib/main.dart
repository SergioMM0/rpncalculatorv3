import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        title: 'RPN Calculator',
        home: MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var _input = '2';
    var _stack = [2.0,3.0];

    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10, right: 10),
                      alignment: Alignment.centerRight,
                      color: Colors.green,
                      child: Text('$_input'),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.fill,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        color: Colors.blue,
                        child: Text('$_stack'),
                      )
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
