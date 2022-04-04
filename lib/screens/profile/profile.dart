import 'package:flutter/material.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:ourcarmyplus/widgets/buttons/button.dart';
import 'package:ourcarmyplus/widgets/effects/remove-scroll-effect.dart';
import 'package:ourcarmyplus/widgets/inputs/number-input.dart';
import 'package:ourcarmyplus/widgets/inputs/text-input.dart';
import 'package:ourcarmyplus/widgets/inputs/textarea-input.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
                    formInput('Full Name', InputType.text),
                    SizedBox(height: 20),
                    formInput('Email Address', InputType.text),
                    SizedBox(height: 20),
                    formInput('Mobile No.', InputType.number),
                    SizedBox(height: 20),
                    formInput('Address', InputType.textarea),
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

  Widget formInput(String label, InputType inputType) {
    Widget input = TextInput(label: "Enter $label");
    if (inputType == InputType.number)
      input = NumberInput(label: "Enter $label");
    if (inputType == InputType.textarea)
      input = TextareaInput(label: "Enter $label");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AText(label, color: Colors.grey.shade600),
        SizedBox(height: 6),
        input,
      ],
    );
  }
}

enum InputType { text, number, textarea }
