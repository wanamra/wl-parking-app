
import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/payment-method-type.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class PaymentMethodFpxPage extends StatelessWidget {
  final List<PaymentMethodType> _methods = [
    PaymentMethodType(
      label: "Bank Islam",
      icon: "assets/icons/bankislam.png",
    ),
    PaymentMethodType(
      label: "Maybank",
      icon: "assets/icons/m2u.png",
    ),
    PaymentMethodType(
      label: "Public Bank",
      icon: "assets/icons/public.png",
    ),
    PaymentMethodType(
      label: "CIMBClicks",
      icon: "assets/icons/cimb.png",
    ),
    PaymentMethodType(
      label: "AMOnline",
      icon: "assets/icons/ambank.png",
    ),
    PaymentMethodType(
      label: "HLBConnect",
      icon: "assets/icons/hongleong.png",
    ),
    PaymentMethodType(
      label: "RHBNow",
      icon: "assets/icons/rhb.png",
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
              "By clicking on the 'Next' button below, you agreen to FPX's Terms and Conditions",
              size: 12,
              color: Colors.grey.shade500,
            ),
          ),
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
        AText("Please select bank", color: Colors.grey.shade600),
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
onTap: () =>  Navigator.pushNamed(context, '/payment/receipt'),
      child: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AText(_method.label, size: 16, spacing: 1.5),
            Image.asset(_method.icon),
          ],
        ),
      ),
    );
  }
}
