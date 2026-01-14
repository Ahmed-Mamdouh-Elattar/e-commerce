import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/feature/home/presentation/helper/category_ui_model.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_list_tile_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  final List<CategoryUiModel> categories = [
    CategoryUiModel(image: Assets.images.dummyHoodie.path, title: "Hoodies"),
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
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
      shrinkWrap: true,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryListTileItem(category: categories[index]);
      },
    );
  }
}
