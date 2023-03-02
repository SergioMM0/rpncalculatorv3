import 'package:flutter/material.dart';
import 'custom_elevated_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String display = '222';

  void buttonPressed(String buttonText) {
    setState(() {
      display += buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            display,
            style: const TextStyle(fontSize: 32.0),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.102),
                child: CustomElevatedButton.orangeGradient(
                    child: const Text('/'), onPressed: () {}
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton.orangeGradient(
                  child: const Text('7'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('8'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('9'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('x'), onPressed: () {}),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton.orangeGradient(
                  child: const Text('4'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('5'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('6'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('-'), onPressed: () {}),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton.orangeGradient(
                  child: const Text('1'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('2'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('3'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('+'), onPressed: () {}),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton.orangeGradient(
                  child: const Text('Undo'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('0'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('.'), onPressed: () {}),
              CustomElevatedButton.orangeGradient(
                  child: const Text('Enter'), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
