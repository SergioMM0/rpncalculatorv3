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
    var _stack = [2.0, 3.0];

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.orange,
                        onSurface: Colors.red
                      ),
                      onPressed: null,
                      child: Text('1'),
                    )
                    ,
                  ),
                )
              ],
            ),

            // TEXT
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text('20,30,123,123,123,124344444',
                    style: TextStyle(
                        fontSize: 30,
                    )
                ),
              ),
              alignment: Alignment(1.0,1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text('10',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
              ),
              alignment: Alignment(1.0,1.0),
            )
          ],
        ),
      ),
    );
  }
}
