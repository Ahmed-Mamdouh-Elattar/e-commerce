import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/address_text_key_and_value.dart';
import 'package:flutter/material.dart';

class FakeAddressCardItem extends StatelessWidget {
  const FakeAddressCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddressTextKeyAndValue(
                  keyText: "Phone Number",
                  valueText: "+201010487532",
                ),
                AddressTextKeyAndValue(keyText: "City", valueText: "Cairo"),
                AddressTextKeyAndValue(
                  keyText: "Street",
                  valueText: "123 Main St",
                ),
                AddressTextKeyAndValue(
                  keyText: "Building Number",
                  valueText: "123",
                ),
                AddressTextKeyAndValue(
                  keyText: "Floor Number",
                  valueText: "123",
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
