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
  String display = '';

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomElevatedButton.orangeGradient(
                child: const Text('Delete'), onPressed: () => buttonPressed('delete'),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.37),
                //To ask: How can I style it in a row. Should I include ghost widgets in the row?
                child: CustomElevatedButton.orangeGradient(
                    child: const Text('/'), onPressed: () => buttonPressed('/'),
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
                  child: const Text('7'), onPressed: () => buttonPressed('7')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('8'), onPressed: () => buttonPressed('8')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('9'), onPressed: () => buttonPressed('9')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('x'), onPressed: () => buttonPressed('x')),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton.orangeGradient(
                  child: const Text('4'), onPressed: () => buttonPressed('4')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('5'), onPressed: () => buttonPressed('5')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('6'), onPressed: () => buttonPressed('6')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('-'), onPressed: () => buttonPressed('-')),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton.orangeGradient(
                  child: const Text('1'), onPressed: () => buttonPressed('1')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('2'), onPressed: () => buttonPressed('2')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('3'), onPressed: () => buttonPressed('3')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('+'), onPressed: () => buttonPressed('+')),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton.orangeGradient(
                  child: const Text('Undo'), onPressed: () => buttonPressed('undo')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('0'), onPressed: () => buttonPressed('0')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('.'), onPressed: () => buttonPressed('.')),
              CustomElevatedButton.orangeGradient(
                  child: const Text('Enter'), onPressed: () => buttonPressed('enter')),
            ],
          ),
        ],
      ),
    );
  }
}
