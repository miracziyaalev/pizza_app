import 'package:cart_repository/src/entities/cart_entitiy.dart';

import '../models/cart.dart';

class BadgeEntity {
  String cartId;
  List<Cart> cartList;
  BadgeEntity({
    required this.cartId,
    required this.cartList,
  });

  // Map<String, Object?> toDocument() {
  //   return {
  //     'cartId': cartId,
  //     'cartList': cartList.toEntity().toDocument(),
  //   };
  // }

  // static BadgeEntity fromDocument(Map<String, Object?> doc) {
  //   return BadgeEntity(
  //     cartId: doc['cartId'] as String,
  //     cartList: Bad
  //   );
  // }
}
