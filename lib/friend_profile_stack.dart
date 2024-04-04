import 'package:codealpha/reusables/custom_button.dart';
import 'package:flutter/material.dart';

class FriendProfileStack extends StatelessWidget {
  const FriendProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * 3 / 5,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 34, 35, 48),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                ),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.1),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color.fromRGBO(0, 188, 199, 1.0),
                                width: 3,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/img103.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Profile Name",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(0, 188, 199, 1.0),
                            ),
                          ),
                          SizedBox(width: 20),
                          MyButton(
                            borderColor: Color.fromRGBO(0, 188, 199, 1.0),
                            color: Colors.transparent,
                            buttonText: "She/Her",
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Real Name",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(0, 188, 199, 1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "26 years old",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(width: width * 0.05),
                          Text(
                            "•",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          SizedBox(width: width * 0.05),
                          Text(
                            "Delhi University",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),

                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.people_alt, color: Colors.white),
                            Text(
                              "Friends",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "234",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              Container(
                color: Colors.grey[100],
                height: height * 2 / 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "About me",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, b. All the La the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            left: width / 2 - 30.0,
            top: height * 3 / 5 - 30.0,  //30, is the half of icon height
            child: Container(
              //width: 200,
              //height: 200,
              child: Icon(Icons.watch_later, color: Colors.purple, size: 60.0),
            ),
          ),


          Positioned(
            left: width* .60,
            top: height * 3 / 5 - 30.0,  //30, is the half of icon height
            child: Container(
              //width: 200,
              //height: 200,
              child: Icon(Icons.watch_later, color: Colors.purple, size: 60.0),
            ),
          ),

          Positioned(
            right: width * 0.07, // Adjust this value to position it more towards the right
            top: height * 0.02,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Report", style: TextStyle(color: Colors.black),),
                  Text("Block", style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
          ),
        ],



      ),
    );
  }
}
