import 'package:get/get.dart';
import '../models/product.dart';

class CartController extends GetxController {
  final cartItems = <Product, int>{}.obs;

  void addToCart(Product product) {
    if (cartItems.containsKey(product)) {
      cartItems[product] = cartItems[product]! + 1;
    } else {
      cartItems[product] = 1;
    }
  }

  void removeFromCart(Product product) {
    if (!cartItems.containsKey(product)) return;

    if (cartItems[product] == 1) {
      cartItems.remove(product);
    } else {
      cartItems[product] = cartItems[product]! - 1;
    }
  }

  void clearCart() {
    cartItems.clear();
  }

  int get totalItems =>
      cartItems.values.fold(0, (sum, qty) => sum + qty);

  double get totalPrice =>
      cartItems.entries.fold(0, (sum, entry) {
        return sum + entry.key.price * entry.value;
      });
}
