import 'package:cloud_firestore/cloud_firestore.dart';

class CartModel {
  String product_title;
  double product_price;
  double product_quantity;
  String description;
  String id;
  CartModel(
      {required this.product_title,
      required this.product_price,
      required this.product_quantity,
      required this.description,
      required this.id});

  factory CartModel.fromJson(DocumentSnapshot json) {
    return CartModel(
        product_title: json['product_title'],
        product_price: json['product_price'],
        product_quantity: json['product_quantity'],
        description: json['description'],
        id: json['id']);
  }

  Map<String, dynamic> toJson() => {
        'product_title': product_title,
        'product_price': product_price,
        'product_quantity': product_quantity,
        'description': description,
        'id': id
      };
}
