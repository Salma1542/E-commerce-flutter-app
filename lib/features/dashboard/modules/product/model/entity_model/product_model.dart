import 'dart:developer';
import 'dart:typed_data';

class ProductModel {
  String? name, desc;
  int? favorite, cart, id, avilabequantity, quantity, price;
  Uint8List? image;

  ProductModel.fromJson(Map m) {
    name = m['name'];
    desc = m['description'];
    image = m['image'];
    quantity = m['quantity'];
    avilabequantity = m['available_quantity'];
    cart = m['cart'];
    favorite = m['favorite'];
    price = m['price'];
    id = m['id'];
  }
}
