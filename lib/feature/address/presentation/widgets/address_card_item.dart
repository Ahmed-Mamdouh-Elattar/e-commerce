import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/feature/address/domain/entities/user_address_entity.dart';
import 'package:e_commerce/feature/address/presentation/widgets/address_text_key_and_value.dart';
import 'package:e_commerce/feature/address/presentation/widgets/delete_address_button.dart';
import 'package:flutter/material.dart';

class AddressCardItem extends StatelessWidget {
  const AddressCardItem({required this.address, super.key});
  final UserAddressEntity address;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          width: 2,
          color: address.isDefault == true
              ? AppColor.primary100
              : Colors.transparent,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddressTextKeyAndValue(
                  keyText: "Phone Number",
                  valueText: address.phoneNumber ?? "",
                ),
                AddressTextKeyAndValue(
                  keyText: "City",
                  valueText: address.city ?? "",
                ),
                AddressTextKeyAndValue(
                  keyText: "Street",
                  valueText: address.streetAddress ?? "",
                ),
                AddressTextKeyAndValue(
                  keyText: "Building Number",
                  valueText: address.building ?? "",
                ),
                AddressTextKeyAndValue(
                  keyText: "Floor Number",
                  valueText: address.floorNumber ?? "",
                ),
              ],
            ),
            DeleteAddressButton(addressId: address.id!),
          ],
        ),
      ),
    );
  }
}
