import 'package:flutter/material.dart';

class BuildingAndFloorInputsFields extends StatelessWidget {
  const BuildingAndFloorInputsFields({
    required this.buildingController,
    required this.floorController,
    super.key,
  });
  final TextEditingController buildingController;
  final TextEditingController floorController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: buildingController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Building is Required";
              }
              return null;
            },
            decoration: const InputDecoration(hintText: "Building"),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            controller: floorController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Floor is Required";
              }
              return null;
            },
            decoration: const InputDecoration(hintText: "Floor number"),
          ),
        ),
      ],
    );
  }
}
