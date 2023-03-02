import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            display,
            style: TextStyle(fontSize: 32.0),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('AC'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black

                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('C'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black

                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('%'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black

                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('/'),
                style: ElevatedButton.styleFrom(

                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black

                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  buttonPressed('7');
                },
                child: Text('7'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonPressed('8');
                },
                child: Text('8'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonPressed('9');
                },
                child: Text('9'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('x'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black

                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  buttonPressed('4');
                },
                child: Text('4'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary:
                  Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonPressed('5');
                },
                child: Text('5'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonPressed('6');
                },
                child: Text('6'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('-'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  buttonPressed('1');
                },
                child: Text('1'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonPressed('2');
                },
                child: Text('2'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonPressed('3');
                },
                child: Text('3'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black, 
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('+'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black

                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('0'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.fromLTRB(32.0, 16.0, 128.0, 16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('.'),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('='),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.fromLTRB(32.0, 16.0, 128.0, 16.0),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onSurface: Colors.grey,
                  shadowColor: Colors.black,
                  elevation: 2.0,
                  // Add the gradient property here
                  // with a BoxDecoration and a gradient
                  // from orange to black

                ),
              ),
            ],
          ),
        ],
      )
      ,
    );
  }
}
