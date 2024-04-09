import 'package:flutter/material.dart';
import 'package:codealpha/reusables/custom_button.dart';
import 'package:codealpha/reusables/textfield_checkbox.dart';
import 'package:codealpha/reusables/my_appbar.dart'; // Importing MyAppBar from the new path

class LikeToBe extends StatefulWidget {
  const LikeToBe({Key? key});

  @override
  State<LikeToBe> createState() => _LikeToBeState();
}

class _LikeToBeState extends State<LikeToBe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(), // Using the imported MyAppBar widget here
      backgroundColor: Color.fromRGBO(246, 246, 246, 1.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'I would like to be known as ',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,color: Colors.black)
                              ),
                              TextSpan(
                                  text: '(Optional)',
                                  style: TextStyle(color: Colors.grey)
                              ),
                            ]
                        )),
                      ),
                      CustomTextField(hintText: 'Please provide your pronoun / gender', showCheckBox: false),
                    ],
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'I would like to be called by ',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,color: Colors.black)
                              ),
                            ]
                        )),
                      ),
                      CustomTextField(hintText: 'Please enter your profile name',showCheckBox: false),
                    ],
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'I\'m studying / Would like to study ',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,color: Colors.black)
                              ),
                            ]
                        )),
                      ),
                      CustomTextField(hintText: 'Art',showCheckBox: true),
                      CustomTextField(hintText: 'Technology',showCheckBox: true),
                      CustomTextField(hintText: 'Economics',showCheckBox: true),
                      CustomTextField(hintText: 'Science',showCheckBox: true),
                      CustomTextField(hintText: 'Psychology',showCheckBox: true),
                      CustomTextField(hintText: 'Marketing',showCheckBox: true),
                      CustomTextField(hintText: 'Design',showCheckBox: true),

                      SizedBox(height: 20.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(borderColor: Colors.grey,color: Colors.white, buttonText: "         Cancel         ", textColor: Colors.black),
                          SizedBox(width: 10.0),
                          MyButton(borderColor: Colors.transparent,color: Color.fromRGBO(0, 188, 199, 1.0),
                              buttonText: "         Save         ", textColor: Colors.white),
                        ],
                      ),

                      SizedBox(height: 50.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
