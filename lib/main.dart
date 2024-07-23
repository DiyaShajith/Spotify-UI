import 'package:flutter/material.dart';
import 'package:spotify/pickers/image%20picker.dart';
import 'package:spotify/view/Createaccount/create_password.dart';
import 'package:spotify/view/Createaccount/createacc_email.dart';
import 'package:spotify/view/Createaccount/gender_page.dart';
import 'package:spotify/view/Createaccount/name_page.dart';
import 'package:spotify/view/chooseartist/chooseartist.dart';
import 'package:spotify/view/start/startscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green,
        brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      home: ImagePickerScreen(),
      //home: StartView(),
    );
  }
}

