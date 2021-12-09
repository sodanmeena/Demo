// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_app/utilities/constants.dart';
// import 'package:zil_admin/utilities/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String labeltext;
  //final bool required;
  final String? Function(String?)? validator;
  final Function(String value)? onChanged;
  final Function(String? value)? onSaved;
  final String? initialValue;
  final bool obscureText;
  final InputDecoration decoration;
  //final Widget prefixIcon,
  final Icon prefixIcon;
  final String hintText;

  final suffix;
  final TextStyle style;
  // final Function(TextEditingController? value)? controller;
  final TextEditingController controller;

  TextFieldWidget({
    required this.labeltext,
    //this.required = true,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.initialValue,
    required this.controller,
    this.obscureText = true,
    required this.decoration,
    required this.prefixIcon,
    required this.suffix,
    required this.hintText,
    required this.style,
  });
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller =
        TextEditingController(text: initialValue);

    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: _controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          //border: OutlineInputBorder(),
          //labelText: labeltext,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: prefixIcon,
          hintText: hintText,
          suffix: suffix,
          // Icon(
          //   Icons.email,
          //   color: Colors.black,
          // ),

          hintStyle: kHintTextStyle,
        ),
        onChanged: onChanged,
        onSaved: onSaved,
        validator: validator,
        // (value) {
        //   if (required && value!.isEmpty)
        //     return '$labeltext cannot be blank !';
        //   return validator?.call(value);
        //},
      ),
    );
  }
}
