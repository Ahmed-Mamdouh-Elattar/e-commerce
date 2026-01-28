import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';

abstract class CartRepo {
  Future<void> addToCart(CartEntity productCart);
  Future<List<CartEntity>> getCartProducts();
  Future<void> removeAllCartProducts();
}
