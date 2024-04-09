import 'package:flutter/material.dart';
import 'package:codealpha/reusables/custom_button.dart';
import 'package:codealpha/reusables/my_appbar.dart'; // Importing MyAppBar from the new path

class BlockPageOne extends StatelessWidget {
  const BlockPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(), // Using the imported MyAppBar widget here
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height,
                decoration: BoxDecoration(
                  color: Colors.teal.shade400,
                ),
              ),
            ],
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  height: 400,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.block, size: 32, color: Colors.red),
                            SizedBox(width: 15.0),
                            Text("Block Mery Fernandez", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Mary Fernandez will no longer be able to:",
                                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("See your posts"),
                                SizedBox(height: 5.0),
                                Text("Invite you to events or groups"),
                                SizedBox(height: 5.0),
                                Text("Message you"),
                                SizedBox(height: 5.0),
                                Text("Add you as a Friend"),

                                SizedBox(height: 40.0),
                                Text("If you are a friend, blocking mary will also unfriend her"),
                              ],
                            ),


                            SizedBox(height: 30.0),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MyButton(borderColor: Colors.black,color: Colors.white, buttonText: "   Cancel    ", textColor: Colors.black),
                                SizedBox(width: 33.0),
                                MyButton(borderColor: Colors.transparent,color: Color.fromRGBO(0, 188, 199, 1.0),
                                    buttonText: " Continue ", textColor: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
