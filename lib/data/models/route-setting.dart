import 'package:flutter/material.dart';

class RouteSetting {
    RouteSetting(
        this.label,
        this.iconData,
        this.route,
    );

    String label;
    IconData iconData;
    String route;

    factory RouteSetting.fromJson(Map<String, dynamic> json) => RouteSetting(
        json["label"],
        json["iconData"],
        json["route"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "icon": iconData,
        "route": route,
    };
}