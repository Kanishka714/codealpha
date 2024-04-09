import 'package:codealpha/reusables/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:codealpha/reusables/custom_button.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width; // Added a semicolon here

    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 40, right: 40),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Set Location", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
              Text("Search by city, town, neighbourhood, or postal code", style: TextStyle(fontSize: 13),),

              SizedBox(height: 20.0 ),

              Text("Location", style: TextStyle(fontSize: 24, color: Colors.grey),),

              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  //height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter description',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.0 ),

              Text("Radius", style: TextStyle(fontSize: 24, color: Colors.grey),),

              SizedBox(height: 15.0),

              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: '15 Miles',
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

              SizedBox(height: 35.0),

              Container(
                height: height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(0, 188, 199, 1.0),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/img104.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(borderColor: Color.fromRGBO(0, 188, 199, 1.0),color: Color.fromRGBO(0, 188, 199, 1.0)
                      , buttonText: "       Apply       ", textColor: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
