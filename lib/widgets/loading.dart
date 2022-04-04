import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120,
        height: 120,
        child: CircularProgressIndicator(
          strokeWidth: 5.0,
        ),
      ),
    );
  }
}
