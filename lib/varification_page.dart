import 'package:codealpha/reusables/custom_button.dart';
import 'package:codealpha/reusables/custom_textfield.dart';
import 'package:codealpha/reusables/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    double topPadding = screenHeight * 0.05;
    double horizontalPadding = screenWidth * 0.1;

    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: topPadding, left: horizontalPadding),
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verification code',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32.0),
                          ),
                          Text(
                            'Please enter the code we sent to',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          Text(
                            'Catherinjames@gmail.com',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30.0),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  enableActiveFill: true,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeColor: Colors.white70, // Set active color to grey
                    selectedColor: Colors.white70, // Set selected color to grey
                    inactiveColor: Colors.white70, // Set inactive color to grey
                    activeFillColor: Colors.white70,
                    selectedFillColor: Colors.white70,
                    inactiveFillColor: Colors.white70,
                    borderWidth: 1,
                  ),
                  onChanged: (value) {
                    setState(() {
                      currentText = value;
                    });
                  },
                ),
              ),

              SizedBox(height: 20.0),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Container(
                  width: double.infinity,
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: topPadding, left: horizontalPadding),
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create new password',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32.0),
                          ),

                          Text(
                            'Your name and password must be different from\n previously used passwords',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),

                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding * 0.5),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.lock, color: Color.fromRGBO(0, 188, 199, 1.0)),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Must be at least 8 characters"),
                ],
              ),

              SizedBox(height: 20.0),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding * 0.5),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Confirm Password',
                        suffixIcon: Icon(Icons.lock, color: Color.fromRGBO(0, 188, 199, 1.0)),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Both passwords must match"),
                ],
              ),

              SizedBox(height: screenHeight * 0.1),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(borderColor: Color.fromRGBO(0, 188, 199, 1.0), color: Color.fromRGBO(0, 188, 199, 1.0), buttonText: " Reset Password ", textColor: Colors.white),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
