import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  // Constructor without key parameter
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Drawer(
      child: Column(
        children: [
          Container(
            height: height * 1 / 3,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 34, 35, 48), // RGB color (34, 35, 48)
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0), // Adjust the radius as needed
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center, // Align the Stack at the center
                  children: [
                    Container(
                      height: 130,
                      width: 130,
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
                  ],
                ),
                // Add your Row here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'Catherine James',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 188, 199, 1.0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),



          // list part

          Container(
            height: height * 2 / 3,
            // ListTiles here:
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person, color: Color.fromRGBO(0, 188, 199, 1.0)),
                    title: Text("Profile"),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on, color: Color.fromRGBO(0, 188, 199, 1.0)),
                    title: Text("Set Location"),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
