import 'package:flutter/material.dart';
import 'package:ourcarmyplus/data/models/location.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';
import 'package:ourcarmyplus/widgets/inputs/number-input.dart';
import 'package:ourcarmyplus/widgets/inputs/text-input.dart';

class RegisterSeasonPage extends StatefulWidget {
  @override
  State<RegisterSeasonPage> createState() => _RegisterSeasonPageState();
}

class _RegisterSeasonPageState extends State<RegisterSeasonPage> {
  final List<Location> _locations = [
    Location("kluang-mall", "Kluang Mall"),
    Location("skudai-parade", "Skudai Parade"),
    Location("paradigm-mall", "Paradigm Mall"),
    Location("city-square", "City Square"),
  ];

  String _location = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Season'),
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
                    formInput('Full Name', false),
                    SizedBox(height: 20),
                    formInput('Identification Card No.', true),
                    SizedBox(height: 20),
                    formInput('Parking Access Card No.', false),
                    SizedBox(height: 20),
                    formInput('Vehicle Plate No.', false),
                    SizedBox(height: 20),
                    inputLocation(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Button(
              'Register',
              () => null,
            ),
          ),
        ],
      ),
    );
  }

  Widget formInput(String label, bool isNumber) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AText(label, color: Colors.grey.shade600),
        SizedBox(height: 6),
        isNumber
            ? NumberInput(label: "Enter $label")
            : TextInput(label: "Enter $label"),
      ],
    );
  }

  Widget inputLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AText('Parking Location', color: Colors.grey.shade600),
        SizedBox(height: 6),
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
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
    );
  }
}
