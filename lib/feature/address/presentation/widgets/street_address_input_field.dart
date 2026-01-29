import 'package:flutter/material.dart';

class StreetAddressInputField extends StatelessWidget {
  const StreetAddressInputField({required this.controller, super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your street address";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Street address or landmark",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.location_on),
        ),
      ),
    );
  }
}
