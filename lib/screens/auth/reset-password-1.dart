import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AText(
                "Reset Password",
                size: 20,
                color: Color(0xff4C5270),
                spacing: 0.1,
              ),
              SizedBox(height: 10),
              AText(
                "Please enter your mobile number to receive a One Time Password in SMS.",
                color: Colors.grey.shade600,
                size: 12,
              ),
              SizedBox(height: 40),
              inputPhone(context),
              SizedBox(height: 20),
              Button("Send", () => Navigator.pushNamed(context, '/otp/reset-password')),
            ],
          ),
        ),
      ),
    );
  }

  Widget inputPhone(BuildContext context) {
    return TextFormField(
      controller: _phone,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffeeeeee),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: "Mobile No",
        hintStyle: GoogleFonts.nunito(
          color: Colors.grey.shade500,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
