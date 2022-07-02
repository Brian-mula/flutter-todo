import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:river/logic/models/cart.dart';

class Carts {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference cartsCollection =
      FirebaseFirestore.instance.collection('carts');

  // !add cart

  Future<void> addToCart(CartModel cart) async {
    await cartsCollection.doc(cart.id).set(cart.toJson());
  }

// !update cart
  Future<void> updateCart(CartModel cart) async {
    await cartsCollection.doc(cart.id).update(cart.toJson());
  }

  // !dlete cart
  Future<void> deleteCart(String id) async {
    await cartsCollection.doc(id).delete();
  }

  // !get all carts
  Stream<List<CartModel>> get getAllCarts {
    return cartsCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return CartModel.fromJson(doc);
      }).toList();
    });
  }
}
