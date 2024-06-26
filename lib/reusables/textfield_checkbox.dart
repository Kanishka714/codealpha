import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool showCheckBox;

  const CustomTextField({Key? key, required this.hintText, required this.showCheckBox}) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: isSelected ? Colors.teal.shade600 : Colors.green,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: isSelected ? Colors.teal.shade600 : Color.fromRGBO(0, 188, 199, 1.0)
                  ,
                  width: 2.0,
                ),
              ),
              filled: true,
              fillColor: Colors.white70,
              suffixIcon: widget.showCheckBox
                  ? Checkbox(
                value: isChecked,
                shape: CircleBorder(),
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                activeColor: Color.fromRGBO(0, 188, 199, 1.0),
              )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}