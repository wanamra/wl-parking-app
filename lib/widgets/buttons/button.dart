import 'package:flutter/material.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  Button(this.label, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        elevation: 0,
        child: AText(
          label,
          color: Color(0xffFFFBEA),
          size: 16.0,
          weight: FontWeight.bold,
          spacing: 0.8,
        ),
        color: Theme.of(context).primaryColor,
        onPressed: onPressed,
      ),
    );
  }
}
