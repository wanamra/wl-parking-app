import 'package:flutter/material.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/inputs/text-input.dart' as tp;

class ParkingPage extends StatefulWidget {
  @override
  State<ParkingPage> createState() => _ParkingPageState();
}

class _ParkingPageState extends State<ParkingPage> {
  TextEditingController _carPlate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parking Payment"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AText("Please type in your card number or car plate"),
            SizedBox(height: 10),
            tp.TextInput(),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: AText(
                "OR",
                size: 20,
                color: Theme.of(context).primaryColor,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Button("Scan QR/Bar Code", () => Navigator.pushNamed(context, "/scan")),
          ],
        ),
      ),
    );
  }
}
