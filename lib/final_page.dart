import 'package:codealpha/reusables/custom_button.dart';
import 'package:flutter/material.dart';

class FinalScan extends StatelessWidget {
  const FinalScan({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, left: 40.0),
                  child: Text(
                    "Liveness check\nComplete",
                    style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            SizedBox(height: 80.0),

            Container(
              //color: Colors.yellow,
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(0, 188, 199, 1.0),
                    width: 3, // Set the width of the border
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/img103.png',
                    fit: BoxFit.cover, // Optional: Adjust the fit of the image within the container
                  ),
                ),
              ),
            ),

            SizedBox(height: 40.0),

            Padding(
              padding: const EdgeInsets.only(left: 39.0, right: 39.0),
              child: Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Your image has been captured successfully. Please make sure that your face is not blurred or out of frame before continuing.',
                    style: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            SizedBox(height: 100.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(borderColor: Colors.transparent,color: Colors.white, buttonText: "        Cancel         ", textColor: Colors.black),
                SizedBox(width: 20.0),
                MyButton(borderColor: Colors.transparent,color: Color.fromRGBO(0, 188, 199, 1.0),
                    buttonText: "      Continue      ", textColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

