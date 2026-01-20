import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_page_body_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductPageBody extends ConsumerWidget {
  const ProductPageBody({required this.productId, super.key});
  final String productId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(getProductByIdProvider(productId));
    return product.when(
      data: (data) {
        return ProductPageBodyContent(data: data);
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
