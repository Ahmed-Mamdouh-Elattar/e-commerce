import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/address_text_key_and_value.dart';
import 'package:flutter/material.dart';

class FakeAddressCard extends StatelessWidget {
  const FakeAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddressTextKeyAndValue(
              keyText: "Phone Number",
              valueText: "01012345678",
            ),
            AddressTextKeyAndValue(keyText: "City", valueText: "Cairo"),
            AddressTextKeyAndValue(keyText: "Street", valueText: "123 Main St"),
            AddressTextKeyAndValue(
              keyText: "Building Number",
              valueText: "123",
            ),
            AddressTextKeyAndValue(keyText: "Floor Number", valueText: "12"),
          ],
        ),
      ),
    );
  }
}
