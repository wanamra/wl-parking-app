import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/payment-method-type.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class PaymentMethodPage extends StatelessWidget {
  final List<PaymentMethodType> _methods = [
    PaymentMethodType(
      label: "Master Card/Visa",
      icon: "assets/icons/mastervisa.png",
      value: '/payment/receipt',
    ),
    PaymentMethodType(
      label: "Online Banking",
      icon: "assets/icons/fpx.png",
      value: '/payment-method-fpx',
    ),
    PaymentMethodType(
      label: "Touch N Go E-wallet",
      icon: "assets/icons/tng.png",
      value: '/payment/receipt',
    ),
    PaymentMethodType(
      label: "Grab Pay",
      icon: "assets/icons/grabpay.png",
      value: '/payment/receipt',
    ),
    PaymentMethodType(
      label: "Boost",
      icon: "assets/icons/boost.png",
      value: '/payment/receipt',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Parking Payment")),
      body: Column(
        children: [
          Expanded(
            child: ScrollConfiguration(
              behavior: RemoveScrollEffect(),
              child: ListView(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                children: [
                  summaryAmount(context),
                  SizedBox(height: 40),
                  methodList(context),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: AText(
              "By clicking on the 'Next' button below, you will be redirected to the bank system. Please do not refresh or close your browser until transaction has completed",
              size: 12,
              color: Colors.grey.shade500,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Button(
                "Next", () => Navigator.pushNamed(context, '/payment/receipt')),
          )
        ],
      ),
    );
  }

  Widget summaryAmount(BuildContext context) {
    return Column(
      children: [
        AText("Payment Amount", size: 16),
        SizedBox(height: 10),
        AText("MYR 8.48", size: 30, color: Theme.of(context).primaryColor),
        SizedBox(height: 10),
        AText("Please select your payment method", color: Colors.grey.shade600),
      ],
    );
  }

  Widget methodList(BuildContext context) {
    return Column(
      children: _methods.map((data) => itemDetail(context, data)).toList(),
    );
  }

  Widget itemDetail(BuildContext context, PaymentMethodType _method) {
    return GestureDetector(
      onTap: () {
        log('tapped!');
        Navigator.pushNamed(context, _method.value.toString());
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        padding: EdgeInsets.symmetric(horizontal: 20),
        // color: Colors.redAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AText(_method.label, size: 16),
            Image.asset(_method.icon),
          ],
        ),
      ),
    );
  }
}
