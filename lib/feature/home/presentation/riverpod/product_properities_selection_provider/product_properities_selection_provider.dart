import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/product_properities_selection_provider/product_properities_selection_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'product_properities_selection_provider.g.dart';

@Riverpod(dependencies: [getProductById])
class ProductProperitiesSelection extends _$ProductProperitiesSelection {
  @override
  ProductProperitiesSelectionState build() {
    final product = ref.watch(getProductByIdProvider).value!;
    return ProductProperitiesSelectionState(
      size: product.sizes![0],
      color: product.colors![0],
      quantity: 1,
    );
  }

  void updateSize(String size) {
    state = state.copyWith(size: size);
  }

  void updateColor(ColorEntity color) {
    state = state.copyWith(color: color);
  }

  void updateQuantity(int quantity) {
    state = state.copyWith(quantity: quantity);
  }
}
