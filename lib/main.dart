import 'package:denning_meeet/screens/home_page.dart';
import 'package:denning_meeet/screens/intro_auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  bool isSigned=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSigned ==  false ? IntroAuthScreen() : HomePage(),
    );
  }
}

