import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController _phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return ScrollConfiguration(
                behavior: RemoveScrollEffect(),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight - 40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mainColumn(),
                        footer(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget mainColumn() {
    return Column(
      children: [
        AText(
          "Sign Up",
          size: 24,
          color: Color(0xff4C5270),
        ),
        AText(
          "Add your details to sign up",
          size: 12,
          weight: FontWeight.w400,
          color: Colors.grey.shade500,
        ),
        SizedBox(height: 40),
        SvgPicture.asset("assets/icons/sign-up.svg", height: 200),
        SizedBox(height: 40),
        inputPhone(context),
        SizedBox(height: 40),
        Button("Sign Up", () => Navigator.pushNamed(context, '/otp/set-password')),
      ],
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

  Widget footer() {
    return Center(
      child: RichText(
        text: TextSpan(
          text: "Already have an account? ",
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
          children: [
            TextSpan(
              text: "Login",
              style: GoogleFonts.nunito(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w800,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.popAndPushNamed(context, "/login"),
            ),
          ],
        ),
      ),
    );
  }
}
