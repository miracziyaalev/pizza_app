import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cart_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartSuccess) {
          return Scaffold(
            body: Center(
              child: Text(state.cartList.toString()),
            ),
          );
        }
        return const Scaffold(
            body: Center(
          child: Text('Cart Screen'),
        ));
      },
    );
  }
}
