import '../entities/badge_entity.dart';
import 'cart.dart';

class Badge {
  String cartId;
  List<Cart> cartList;
  Badge({
    required this.cartId,
    required this.cartList,
  });

  BadgeEntity toEntity() {
    return BadgeEntity(
      cartId: cartId,
      cartList: cartList,
    );
  }

  static Badge fromEntity(BadgeEntity entity) {
    return Badge(
      cartId: entity.cartId,
      cartList: entity.cartList,
    );
  }
}
