import 'package:flutter/material.dart';
import 'package:jsonexample/src/features/contact/pages/contact_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contact App",
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: const ContactPage(),
    );
  }
}
