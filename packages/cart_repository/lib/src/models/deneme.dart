// To parse this JSON data, do
//
//     final deneme = denemeFromJson(jsonString);

import 'dart:convert';

Deneme denemeFromJson(String str) => Deneme.fromJson(json.decode(str));

String denemeToJson(Deneme data) => json.encode(data.toJson());

class Deneme {
    String? cartId;
    List<CartDen>? cartDen;

    Deneme({
        this.cartId,
        this.cartDen,
    });

    factory Deneme.fromJson(Map<String, dynamic> json) => Deneme(
        cartId: json["cartID"],
        cartDen: json["cartDen"] == null ? [] : List<CartDen>.from(json["cartDen"]!.map((x) => CartDen.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "cartID": cartId,
        "cartDen": cartDen == null ? [] : List<dynamic>.from(cartDen!.map((x) => x.toJson())),
    };
}

class CartDen {
    int? discount;
    int? quantity;
    String? picture;
    String? name;
    int? price;
    int? totalPrice;

    CartDen({
        this.discount,
        this.quantity,
        this.picture,
        this.name,
        this.price,
        this.totalPrice,
    });

    factory CartDen.fromJson(Map<String, dynamic> json) => CartDen(
        discount: json["discount"],
        quantity: json["quantity"],
        picture: json["picture"],
        name: json["name"],
        price: json["price"],
        totalPrice: json["total_price"],
    );

    Map<String, dynamic> toJson() => {
        "discount": discount,
        "quantity": quantity,
        "picture": picture,
        "name": name,
        "price": price,
        "total_price": totalPrice,
    };
}
