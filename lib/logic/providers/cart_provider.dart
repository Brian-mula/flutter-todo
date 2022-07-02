import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/logic/models/cart.dart';
import 'package:river/logic/store/carts.dart';

Carts _carts = Carts();

final cartProvider = StreamProvider<List<CartModel>>((ref) async* {
  yield* _carts.getAllCarts;
});
