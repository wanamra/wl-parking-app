import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool _hidePassword = true;
  TextEditingController _password = new TextEditingController();
  TextEditingController _password2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: ScrollConfiguration(
                behavior: RemoveScrollEffect(),
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    inputPassword(context, 'Password', _password),
                    SizedBox(height: 20),
                    inputPassword(context, 'Re-type Password', _password2),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Button(
              'Save',
              () => null,
            ),
          ),
        ],
      ),
    );
  }

  Widget inputPassword(BuildContext context, String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AText(label, color: Colors.grey.shade600),
        SizedBox(height: 6),
        TextFormField(
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
            hintText: "Password",
            hintStyle: GoogleFonts.nunito(
              color: Colors.grey.shade500,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _hidePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 20,
              ),
              onPressed: () {
                setState(() => _hidePassword = !_hidePassword);
              },
            ),
          ),
          obscureText: _hidePassword,
        ),
      ],
    );
  }
}
