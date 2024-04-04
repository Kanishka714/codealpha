import 'package:codealpha/reusables/custom_drawer.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("wot?")),
        backgroundColor: Colors.grey,
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Center(child: Text("making appbar")),
        ],
      ),
    );
  }
}
