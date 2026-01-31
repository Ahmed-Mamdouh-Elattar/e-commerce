import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/fake_product_page_body_content.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_page_body_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

@Dependencies([getProductById])
class ProductPageBody extends ConsumerWidget {
  const ProductPageBody({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(getProductByIdProvider);
    return product.when(
      data: (data) {
        return const ProductPageBodyContent();
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const FakeProductPageBodyContent();
      },
    );
  }
}
