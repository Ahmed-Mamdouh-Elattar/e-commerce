import 'package:e_commerce/core/helper/constansts.dart';
import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';

class TakeUserAddressPageBody extends StatelessWidget {
  const TakeUserAddressPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          PhoneTextField(
            isRequired: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              hintText: "Enter your Phone Number",
            ),
            onChanged: (phoneNumber) {
              // Handle phone number changes
            },
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextFormField(
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
          ),
          const SizedBox(height: 20),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your street address";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Street address",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.location_on),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your building";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(hintText: "Building"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your floor number";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(hintText: "Floor number"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
