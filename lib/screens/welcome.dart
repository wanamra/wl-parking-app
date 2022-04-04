import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/buttons/o-button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SvgPicture.asset(
                  "assets/icons/landing.svg",
                  height: 200,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: AText(
              "Discover a brand new Smart Parking Apps with seamless Payment Integration",
              size: 12,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 5),
            child: Button("Login", () => Navigator.pushNamed(context, '/login')),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 5, 30, 30),
            child: OButton("Create An Account", () => Navigator.pushNamed(context, '/signup')),
          ),
        ],
      ),
    );
  }
}
