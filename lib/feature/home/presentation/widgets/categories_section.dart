import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/feature/home/presentation/helper/category_ui_model.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_type.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  final List<CategoryUiModel> categories = [
    CategoryUiModel(image: Assets.images.dummyHoodie.path, title: "Hoodie"),
    CategoryUiModel(image: Assets.images.dummyShort.path, title: "Short"),
    CategoryUiModel(image: Assets.images.dummyShoes.path, title: "Shoes"),
    CategoryUiModel(image: Assets.images.dummyBag.path, title: "Bag"),
    CategoryUiModel(
      image: Assets.images.dummyAcccessories.path,
      title: "Acccessories",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: categories
          .map((category) => CategoryType(category: category))
          .toList(),
    );
  }
}
