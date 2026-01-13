import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_type.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryType(image: Assets.images.dummyHoodie.path, title: "Hoodie"),
        CategoryType(image: Assets.images.dummyShort.path, title: "Short"),
        CategoryType(image: Assets.images.dummyShoes.path, title: "Shoes"),
        CategoryType(image: Assets.images.dummyBag.path, title: "Bag"),
        CategoryType(
          image: Assets.images.dummyAcccessories.path,
          title: "Acccessories",
        ),
      ],
    );
  }
}
