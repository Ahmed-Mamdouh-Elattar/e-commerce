import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({required this.phoneValueNotifier, super.key});
  final ValueNotifier<String> phoneValueNotifier;

  @override
  Widget build(BuildContext context) {
    return PhoneTextField(
      isRequired: true,
      initialCountryCode: "EG",
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(hintText: "Enter your Phone Number"),
      onChanged: (phoneNumber) {
        phoneValueNotifier.value = phoneNumber.completeNumber;
      },
    );
  }
}
