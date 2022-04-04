import 'package:flutter/material.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';

class OButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  OButton(this.label, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45),
          ),
          elevation: 0,
          side: BorderSide(
            color: Colors.indigo,
            // width: 1,
          ),
        ),
        child: AText(
          label,
          color: Theme.of(context).primaryColor,
          size: 16.0,
          weight: FontWeight.bold,
          spacing: 0.8,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
