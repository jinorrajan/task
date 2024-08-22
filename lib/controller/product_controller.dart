
import 'package:get/get.dart';
import '../models/product_model.dart';

class ProductController extends GetxController {
 
  var products = <Product>[].obs;

  @override
  void onInit() {
    loadDummyData();  
    super.onInit();
  }

  // Method to load dummy data
  void loadDummyData() {
    products.addAll([
      Product(
        imageUrl: 'assets/images/1.png',
        name: 'Product 1',
        price: 29.99,
      ),
      Product(
        imageUrl: 'assets/images/2.png',
        name: 'Product 2',
        price: 49.99,
      ),
      Product(
        imageUrl: 'assets/images/3.png',
        name: 'Product 3',
        price: 19.99,
      ),
      Product(
        imageUrl: 'assets/images/4.png',
        name: 'Product 3',
        price: 19.99,
      ),
      Product(
        imageUrl: 'assets/images/5.png',
        name: 'Product 3',
        price: 19.99,
      ),
    ]);
  }
}
