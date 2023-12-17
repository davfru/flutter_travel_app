import 'package:flutter/material.dart';
import 'package:flutter_travel_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Montserrat",
          // fontFamily: GoogleFonts.lato().fontFamily,
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: "Montserrat", displayColor: Colors.black),
        ),
        home: const HomePage());
  }
}
