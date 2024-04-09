import 'package:codealpha/reusables/custom_button.dart';
import 'package:codealpha/reusables/custom_textfield.dart';
import 'package:codealpha/reusables/my_appbar.dart';
import 'package:flutter/material.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Show us it\'s you!\n',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 32),
                            ),
                            TextSpan(
                              text: 'Please verify your email to continue',
                              style: TextStyle(color: Colors.grey,fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ), // Add space between RichText and CustomTextField
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Email Address',
                      suffixIcon: Icon(Icons.email, color: Color.fromRGBO(0, 188, 199, 1.0)
                      ), // Change suffix icon as needed
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 520.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(borderColor: Color.fromRGBO(0, 188, 199, 1.0),color: Color.fromRGBO(0, 188, 199, 1.0)
                    , buttonText: "       Continue       ", textColor: Colors.white),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
