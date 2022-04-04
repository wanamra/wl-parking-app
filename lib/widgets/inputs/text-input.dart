import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? remark;
  final Color bgColor;

  TextInput({
    this.controller,
    this.label,
    this.remark,
    this.bgColor = const Color(0xffeeeeee),
  });

  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: bgColor,
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
      ),
    );
  }
}
