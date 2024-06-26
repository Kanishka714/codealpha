import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final Widget? suffixIcon; // Use Widget type to allow any kind of widget as suffix

  const CustomTextField({Key? key, required this.hintText, this.suffixIcon}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isChecked = false;
  bool isSelected = false; // Track whether the text field is selected or not

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 5.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected; // Toggle the selected state
          });
        },
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: isSelected ? Color.fromRGBO(0, 188, 199, 1.0) : Colors.white,
                  width: 2.0,
                ),
              ),
              filled: true,
              fillColor: Colors.white70,
              suffixIcon: widget.suffixIcon, // Use the provided suffix icon
            ),
          ),
        ),
      ),
    );
  }
}
