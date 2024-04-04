import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Color color;
  final Color borderColor; // New property for border color
  final String buttonText;
  final Color textColor;
  const MyButton({
    Key? key,
    required this.color,
    required this.borderColor,
    required this.buttonText,
    required this.textColor,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return widget.color; // Change button color when pressed
          }
          return widget.color; // Default button color
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return widget.textColor; // Change text color when pressed
          }
          return widget.textColor; // Default text color
        }),
        side: MaterialStateProperty.resolveWith<BorderSide>((Set<MaterialState> states) {
          return BorderSide(color: widget.borderColor); // Add border color
        }),
      ),
      onPressed: () {
        print("button clicked");
      },
      child: Text(
        widget.buttonText,
      ),
    );
  }
}
