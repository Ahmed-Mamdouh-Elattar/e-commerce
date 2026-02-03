import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class AddressTextKeyAndValue extends StatelessWidget {
  const AddressTextKeyAndValue({
    required this.keyText,
    required this.valueText,
    super.key,
  });
  final String keyText;
  final String valueText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$keyText: ", style: AppTextStyle.medium16),
        Text(
          valueText,
          style: AppTextStyle.regular16,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
