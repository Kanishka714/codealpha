import 'package:codealpha/reusables/custom_button.dart';
import 'package:codealpha/reusables/my_appbar.dart';
import 'package:flutter/material.dart';

class ReportPageOne extends StatelessWidget {
  const ReportPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: .8,
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
                            Icon(Icons.warning_amber_outlined, size: 32, color: Colors.red),
                            SizedBox(width: 15.0),
                            Text("Report Mery Fernandez", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),)
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
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Why are you reporting this user?",
                                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(right: 35.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  border: InputBorder.none,
                                  hintText: 'Inapropriate Behaviour',
                                  //hintStyle: TextStyle(color: Colors.grey),
                                  suffixIcon: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      onChanged: (String? value) {
                                        // Handle dropdown menu item selection
                                      },
                                      items: <String>['Reason 1', 'Reason 2', 'Reason 3']
                                          .map<DropdownMenuItem<String>>(
                                            (String value) => DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        ),
                                      )
                                          .toList(),
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              children: [
                                Text(
                                  "Please describe your reason for reporting",
                                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(right: 35.0),
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[200],
                                ),
                                child: TextField(
                                  maxLines: null, // Allows multiline input
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    hintText: 'Text here...',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10.0),
                                  ),
                                ),
                              ),
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
