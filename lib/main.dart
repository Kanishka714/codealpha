import 'package:codealpha/begginig_scan.dart';
import 'package:codealpha/block_page.dart';
import 'package:codealpha/final_page.dart';
import 'package:codealpha/friend_prof_stack.dart';
import 'package:codealpha/friend_profile_stack.dart';
import 'package:codealpha/like_tobe.dart';
import 'package:codealpha/location.dart';
import 'package:codealpha/nearly_there.dart';
import 'package:codealpha/report_page.dart';
import 'package:codealpha/reset_page.dart';
import 'package:codealpha/side_menu.dart';
import 'package:codealpha/terms_and_condition.dart';
import 'package:codealpha/varification_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LikeToBe(),
/*
      routes:{

      },
*/
    );
  }
}