import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_new_in_products_provider/get_new_in_products_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/shared/product_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewInItemsList extends ConsumerWidget {
  const NewInItemsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newInProducts = ref.watch(getNewInProductsProvider);
    return newInProducts.when(
      data: (data) {
        return SizedBox(
          height: 282.h,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: kPadding),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ProductCardItem(product: data[index]);
            },
          ),
        );
      },
      loading: () {
        return Skeletonizer(
          child: SizedBox(
            height: 282.h,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(width: 12);
              },
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: kPadding),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ProductCardItem(product: ProductEntity(id: ""));
              },
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
    );
  }
}
