import 'package:flutter/material.dart';

class TermsandConditonPage extends StatefulWidget {
  const TermsandConditonPage({Key? key});

  @override
  State<TermsandConditonPage> createState() => _TermsandConditonPageState();
}

class _TermsandConditonPageState extends State<TermsandConditonPage> {
  late double height, width;
  bool isChecked = false; // Added isChecked variable

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  height: 550,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("Terms & Conditions",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Ladies and gentlemen, as we gather today, let us reflect on our shared journey. Through challenges and triumphs, we've grown stronger. Together, let's embrace unity, empathy, and hope. Our future is bright when we stand united. Thank you."
                                      "Ladies and gentlemen, as we gather today, let us reflect on our shared journey. Through challenges and triumphs, we've grown stronger. Together, let's embrace unity, empathy, and hope. Our future is bright when we stand united. Thank you.",
                                  style: TextStyle(color: Colors.grey.shade600),),
                                SizedBox(height: 10),
                                Text(
                                  "Ladies and gentlemen, as we gather today, let us reflect on our shared journey. Through challenges and triumphs, we've grown stronger. Together, let's embrace unity, empathy, and hope. Our future is bright when we stand united. Thank you.",
                                  style: TextStyle(color: Colors.grey.shade600),),
                              ],
                            ),
                          ),
                        ),
                        // New Row with Checkbox and Text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: isChecked,
                              shape: CircleBorder(),
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              activeColor: Color.fromRGBO(0, 188, 199, 1.0),
                            ),
                            Text('I accept terms and conditions', style: TextStyle(color: Color.fromRGBO(0, 188, 199, 1.0)),),
                          ],
                        ),
                      ],
                    ),
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
