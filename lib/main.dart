import 'package:aryas_delivery_app/screens/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aryas Delivery Application',
      theme: _buildTheme(Brightness.light),
      home: LoginPage(),
    );
  }
}
ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
      textTheme: GoogleFonts.robotoCondensedTextTheme(baseTheme.textTheme),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green.shade500,
        centerTitle: true, elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black87,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),),focusColor: Colors.green,primaryColor: Colors.green
  );
}