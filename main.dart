import 'package:aplikasi/edit.dart';
import 'package:aplikasi/forgotpass.dart';
import 'package:aplikasi/homepage.dart';
import 'package:aplikasi/login.dart';
import 'package:aplikasi/resetpass.dart';
import 'package:aplikasi/signup.dart';
import 'package:flutter/material.dart';

import 'loginhehe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const HomePage(), debugShowCheckedModeBanner: false);
  }
}
