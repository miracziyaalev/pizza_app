import 'package:cloud_firestore/cloud_firestore.dart';

import '../cart_repository.dart';

abstract class CartRepository {
  Future<List<CartDen>> getCartItems();
  Future<void> addCartItem(Cart cartItem);
  Future<void> removeCartItem(Cart cartItem);
}

class FirebaseCartRepo implements CartRepository {
  final String userId;

  FirebaseCartRepo({required this.userId});
  @override
  Future<void> addCartItem(Cart cartItem) {
    // TODO: implement addCartItem
    throw UnimplementedError();
  }

  @override
  Future<List<CartDen>> getCartItems() async {
    final cartCollection = FirebaseFirestore.instance.collection('carts');

    final query = cartCollection.where('cartId', isEqualTo: userId);
    try {
      return await query.get().then((value) => value.docs.map((e) => CartDen.fromJson(e.data())).toList());
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> removeCartItem(Cart cartItem) {
    // TODO: implement removeCartItem
    throw UnimplementedError();
  }
}
