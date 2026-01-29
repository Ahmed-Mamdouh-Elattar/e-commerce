import 'package:flutter/material.dart';

class CityAndStateInputsFields extends StatelessWidget {
  const CityAndStateInputsFields({
    required this.cityController,
    required this.stateController,
    super.key,
  });
  final TextEditingController cityController;
  final TextEditingController stateController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: cityController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your city";
              }
              return null;
            },
            decoration: const InputDecoration(hintText: "City"),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            controller: stateController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your state";
              }
              return null;
            },
            decoration: const InputDecoration(hintText: "State"),
          ),
        ),
      ],
    );
  }
}
