import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ourcarmyplus/data/models/intro-page.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';

class IntroductionPage extends StatefulWidget {
  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  List<IntroPage> _pages = [
    IntroPage(
      "assets/icons/onboarding1.svg",
      "All In One",
      "One apps for multiple parking sites in Malaysia",
      Colors.indigo,
    ),
    IntroPage(
      "assets/icons/onboarding2.svg",
      "Saves You",
      "Saves your time, energy and money. Redeem voucher for discounted parking rates.",
      Colors.indigo,
    ),
    IntroPage(
      "assets/icons/onboarding3.svg",
      "Pay Online",
      "No more physical cash. Multiple payment methods to make your life easier",
      Colors.indigo,
    ),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(_pages[index].image, height: 200),
              SizedBox(height: 20),
              pagerRow(),
              SizedBox(height: 25),
              AText(
                _pages[index].title,
                size: 20,
                weight: FontWeight.w600,
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 10,
                child: AText(_pages[index].desc, size: 12),
              ),
              SizedBox(height: 60),
              Button(
                "Next",
                () {
                  setState(() {
                    if (index < (_pages.length - 1))
                      index++;
                    else
                      Navigator.pushReplacementNamed(context, '/welcome');
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pagerRow() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          pager(0),
          SizedBox(width: 6),
          pager(1),
          SizedBox(width: 6),
          pager(2),
        ],
      ),
    );
  }

  Widget pager(int i) {
    return Container(
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: index == i ? Theme.of(context).primaryColor : Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
