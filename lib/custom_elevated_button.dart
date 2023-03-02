import 'package:flutter/material.dart';

class CustomElevatedButton extends ElevatedButton {
  CustomElevatedButton({
    Key? key,
    required Widget child,
    required VoidCallback onPressed,
    ButtonStyle? style,
  }) : super(
          key: key,
          onPressed: onPressed,
          style: style,
          child: child,
        );

  factory CustomElevatedButton.orangeGradient({
    required Widget child,
    required VoidCallback onPressed,
  }) =>
      CustomElevatedButton(
        onPressed: onPressed,
        child: child,
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.all(16.0),
        ),
      );
}
