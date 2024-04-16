import '../entities/cart_entitiy.dart';

class Cart {
  int price;
  int discount;
  int quantity;
  String name;
  String picture;
  int totalPrice;

  Cart({
    required this.price,
    required this.discount,
    required this.quantity,
    required this.name,
    required this.picture,
    required this.totalPrice,
  });

  static final empty = Cart(
    price: 0,
    discount: 0,
    quantity: 0,
    name: '',
    picture: '',
    totalPrice: 0,
  );

  CartEntity toEntity() {
    return CartEntity(
      price: price,
      totalPrice: totalPrice,
      discount: discount,
      quantity: quantity,
      name: name,
      picture: picture,
    );
  }

  static Cart fromEntity(CartEntity entity) {
    return Cart(
      price: entity.price,
      totalPrice: entity.totalPrice,
      discount: entity.discount,
      quantity: entity.quantity,
      name: entity.name,
      picture: entity.picture,
    );
  }
}
