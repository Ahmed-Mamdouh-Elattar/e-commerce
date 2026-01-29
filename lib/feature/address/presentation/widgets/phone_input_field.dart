import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({required this.phoneController, super.key});
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return PhoneTextField(
      isRequired: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(hintText: "Enter your Phone Number"),
      onChanged: (phoneNumber) {
        // Handle phone number changes
      },
    );
  }
}
