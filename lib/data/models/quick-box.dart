import 'package:flutter/material.dart';

class QuickBox {
  QuickBox(
    this.icon,
    this.route,
  );

  IconData icon;
  String route;

  factory QuickBox.fromJson(Map<String, dynamic> json) => QuickBox(
        json["icon"],
        json["route"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "route": route,
      };
}
