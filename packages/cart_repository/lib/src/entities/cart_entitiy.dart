class CartEntity {
  int price;
  int discount;
  int quantity;
  String name;
  String picture;
  int totalPrice;


  CartEntity({
    required this.price,
    required this.discount,
    required this.quantity,
    required this.name,
    required this.picture,
    required this.totalPrice,
  });

  Map<String, Object?> toDocument() {
    return {
      'price': price,
      'discount': discount,
      'quantity': quantity,
      'name': name,
      'picture': picture,
      "total_price": totalPrice,
    };
  }

  static CartEntity fromDocument(Map<String, dynamic> doc) {
    return CartEntity(
      price: doc['price'],
      totalPrice: doc['total_price'],
      discount: doc['discount'],
      quantity: doc['quantity'],
      name: doc['name'],
      picture: doc['picture'],
    );
  }
}
