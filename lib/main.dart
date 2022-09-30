import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ncb_clone/Components/home/account_home.dart';
// import 'package:ncb_clone/Components/login/login.dart';

void main() async => {
  WidgetsFlutterBinding.ensureInitialized(),
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ), // To turn off landscape mode
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AccountHome(),
  ))
};
