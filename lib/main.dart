import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "OpenSans",
            primaryColor: Colors.white,
            hoverColor: Colors.orangeAccent,
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.black,
                statusBarIconBrightness: Brightness.light,
              ),
            ),
          ),
          color: Colors.white70,
          home: LoginPage(),
        );
  }

}
