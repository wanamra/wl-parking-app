import 'package:flutter/material.dart';
import 'package:ourcarmyplus/router.dart';
import 'package:ourcarmyplus/screens/home.dart';
import 'package:ourcarmyplus/theme.dart';

void main() {
  runApp(OurCarMyPlus());
}

class OurCarMyPlus extends StatelessWidget {

  final AppRouter _appRouter = AppRouter();
  final AppTheme _appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _appTheme.themeData(),
      home: HomePage(),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
