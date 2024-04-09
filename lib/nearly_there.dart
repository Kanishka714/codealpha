import 'package:flutter/material.dart';
import 'package:codealpha/reusables/custom_button.dart';
import 'package:codealpha/reusables/my_appbar.dart'; // Importing MyAppBar from the new path

class NearlyThere extends StatelessWidget {
  const NearlyThere({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(), // Using the imported MyAppBar widget here
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 40.0),
                  child: Text(
                    "You're nearly there",
                    style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            Container(
              height: 500,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    right: -15,
                    child: Container(
                      height: 500,
                      width: 400,
                      child: Image.asset(
                          'assets/img101.png'
                      ),
                    ),
                  ),
                ],
              ),
            ),




            SizedBox(height: 150.0),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(borderColor: Colors.transparent,color: Color.fromRGBO(0, 188, 199, 1.0)
                    , buttonText: "             Capture             ", textColor: Colors.white),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
