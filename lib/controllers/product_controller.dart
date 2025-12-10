import 'package:get/get.dart';
import '../models/product.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();

    products.addAll([
      Product(
        id: '1',
        name: 'T-Shirt',
        description: 'Comfortable cotton T-shirt with Flutter logo.',
        price: 12.99,
      ),
      Product(
        id: '2',
        name: 'Mug',
        description: 'Ceramic mug for coffee or tea.',
        price: 8.50,
      ),
      Product(
        id: '3',
        name: 'Sticker Pack',
        description: 'High-quality stickers for laptops.',
        price: 4.99,
      ),
      Product(
        id: '4',
        name: 'Book',
        description: 'Comfortable cotton T-shirt with Flutter logo.',
        price: 12.99,
      ),
      Product(
        id: '5',
        name: 'Pen',
        description: 'Ceramic mug for coffee or tea.',
        price: 8.50,
      ),
      Product(
        id: 'Flower',
        name: 'Sticker Pack',
        description: 'High-quality stickers for laptops.',
        price: 4.99,
      ),
    ]);
  }
}
