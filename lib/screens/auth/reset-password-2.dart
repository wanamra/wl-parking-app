import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';

class ResetPassword2Page extends StatefulWidget {
  @override
  State<ResetPassword2Page> createState() => _ResetPassword2PageState();
}

class _ResetPassword2PageState extends State<ResetPassword2Page> {
  List<bool> _hidePassword = [true, true];
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

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
                "Please insert your password. Make sure your password have at least 8 characters",
                color: Colors.grey.shade600,
                size: 12,
              ),
              SizedBox(height: 40),
              inputPassword(context, _password, "Password", 0),
              SizedBox(height: 20),
              inputPassword(context, _confirmPassword, "Confirm Password", 1),
              SizedBox(height: 20),
              Button("Next", () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget inputPassword(
    BuildContext context,
    TextEditingController controller,
    String label,
    int index,
  ) {
    return TextFormField(
      controller: controller,
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
        hintText: label,
        hintStyle: GoogleFonts.nunito(
          color: Colors.grey.shade500,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _hidePassword[index]
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            size: 20,
          ),
          onPressed: () {
            setState(() => _hidePassword[index] = !_hidePassword[index]);
          },
        ),
      ),
      obscureText: _hidePassword[index],
    );
  }
}
