import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/location.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';

class SetLocationPage extends StatefulWidget {
  @override
  State<SetLocationPage> createState() => _SetLocationPageState();
}

class _SetLocationPageState extends State<SetLocationPage> {
  List<Location> _locations = [
    Location("kluang-mall", "Kluang Mall"),
    Location("skudai-parade", "Skudai Parade"),
    Location("paradigm-mall", "Paradigm Mall"),
    Location("city-square", "City Square"),
  ];

  String _location = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      _location = _locations.first.val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AText(
                  "First, let us know your location?",
                  size: 20,
                  color: Color(0xff4C5270),
                  spacing: 0.1,
                ),
                SizedBox(height: 20),
                inputLocation(),
                SizedBox(height: 20),
                Button("Next", () => Navigator.pushReplacementNamed(context, '/home')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget inputLocation() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AText(
            "Parking location",
            size: 10,
          ),
          DropdownButtonFormField(
            items: _locations.map((Location location) {
              return DropdownMenuItem(
                value: location.val,
                child: AText(location.label),
              );
            }).toList(),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffeeeeee),
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              hintText: 'Select location',
            ),
            icon: Icon(Icons.keyboard_arrow_down_sharp),
            onChanged: (val) {
              setState(() => _location = val.toString());
            },
          ),
        ],
      ),
    );
  }
}
