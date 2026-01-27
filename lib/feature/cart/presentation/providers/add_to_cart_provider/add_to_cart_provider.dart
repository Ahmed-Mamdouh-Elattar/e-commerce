import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:e_commerce/feature/cart/presentation/providers/add_to_cart_provider/add_to_cart_states.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'add_to_cart_provider.g.dart';

@riverpod
class AddToCart extends _$AddToCart {
  @override
  AddToCartStates build() {
    return const AddToCartStates.initial();
  }

  Future<void> addToCart(CartEntity productCart) async {
    state = const AddToCartStates.loading();
    try {
      await ref.read(addToCartUseCaseProvider).call(productCart);
      state = const AddToCartStates.loaded();
      Future.delayed(const Duration(seconds: 2), () {
        if (ref.mounted) {
          state = const AddToCartStates.initial();
        }
      });
    } catch (e) {
      state = AddToCartStates.failure(e.toString());
      Future.delayed(const Duration(seconds: 2), () {
        if (ref.mounted) {
          state = const AddToCartStates.initial();
        }
      });
    }
  }
}
