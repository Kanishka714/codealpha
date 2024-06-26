import 'package:flutter/material.dart';
import 'package:codealpha/reusables/custom_button.dart';
import 'package:codealpha/reusables/my_appbar.dart'; // Importing MyAppBar from the new path

class BeginningtoScan extends StatelessWidget {
  const BeginningtoScan({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(), // Using the imported MyAppBar widget here
      body: Container(
        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 8.0),
              child: Container(
                  child: Text(
                      "Show us\nyou are real",
                      style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),

                  )),
            ),

            Center(
              child: Container(
                color: Colors.grey[100],
                height: 250, // Adjust height as needed
                width: 300, // Adjust width as needed
                child: Center(
                  child: Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 200.0,
                  ),
                ),
              ),
            ),

            SizedBox(height: 50.0),

            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'We need to perform a liveness check to help prove your identity and make sure you\'re a real person. This helps us filter bots and fake accounts for your benefit.',
                    style: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30.0),

            Padding(
              padding: const EdgeInsets.only(left: 39.0, right: 39.0),
              child: Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Rest assured, this photo will not be public and will not be stored on our system. Please continue and follow the instructions as they appear on screen.',
                    style: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            SizedBox(height: 180.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(borderColor: Colors.transparent, color: Color.fromRGBO(0, 188, 199, 1.0)
                    , buttonText: "         Proceed         ", textColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
