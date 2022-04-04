import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:pinput/pin_put/pin_put.dart';

class Otp1Page extends StatelessWidget {
  final TextEditingController _pin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              AText(
                "We have sent and OTP to your mobile",
                size: 20,
                color: Color(0xff4C5270),
                spacing: 0.1,
              ),
              SizedBox(height: 20),
              AText(
                "Please check your mobile number 014*****13 to set your password",
                color: Colors.grey.shade600,
                spacing: 0.1,
              ),
              SizedBox(height: 40),
              PinPut(
                controller: _pin,
                fieldsCount: 6,
                followingFieldDecoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
                selectedFieldDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border(
                    left: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                    right: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                    top: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                    bottom: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                ),
                submittedFieldDecoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: GoogleFonts.nunito(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
                autofocus: true,
              ),
              SizedBox(height: 40),
              Button("Next", () => Navigator.pushNamed(context, '/set-password')),
              SizedBox(height: 40),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget footer(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: "Didn't receive? ",
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          children: [
            TextSpan(
              text: "Click here",
              style: GoogleFonts.nunito(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w800,
              ),
              // recognizer: TapGestureRecognizer()
              //   ..onTap = () => Navigator.pushNamed(context, "/auth/alumni"),
            ),
          ],
        ),
      ),
    );
  }
}
