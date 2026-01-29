import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';

abstract class CartRepo {
  Future<void> addToCart(CartEntity productCart);
  Future<List<CartEntity>> getCartProducts();
  Future<void> removeAllCartProducts();
  Future<void> updateCartProductQuantity(CartEntity cartProduct);
  Future<double> getCartTotalPrice();
  Future<void> removeCartProduct(String cartProductId);
}
