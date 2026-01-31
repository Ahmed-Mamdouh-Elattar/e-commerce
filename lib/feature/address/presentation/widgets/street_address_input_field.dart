import 'package:flutter/material.dart';

class StreetAddressInputField extends StatelessWidget {
  const StreetAddressInputField({
    required this.controller,
    required this.focusNode,
    super.key,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your street address";
        }
        return null;
      },
      decoration: const InputDecoration(hintText: "Street address"),
    );
  }
}
