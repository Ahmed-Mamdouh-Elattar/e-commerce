import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

@Dependencies([getProductById])
class ProductTitleAndPrice extends ConsumerWidget {
  const ProductTitleAndPrice({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(getProductByIdProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.value!.title ?? "", style: AppTextStyle.bold16),
        const SizedBox(height: 15),
        Text(
          "\$${product.value!.price}",
          style: AppTextStyle.bold16.copyWith(color: AppColor.primary100),
        ),
      ],
    );
  }
}
