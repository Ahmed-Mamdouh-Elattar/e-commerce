import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/feature/home/presentation/widgets/home_page/see_all_text_button.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    required this.sectionTitle,
    super.key,
    this.onPressedSeeAll,
    this.isSeeAllButtonVisible = true,
  });
  final String sectionTitle;
  final void Function()? onPressedSeeAll;
  final bool isSeeAllButtonVisible;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(sectionTitle, style: AppTextStyle.bold16),
        const Spacer(),
        if (isSeeAllButtonVisible) SeeAllTextButton(onPressed: onPressedSeeAll),
      ],
    );
  }
}
