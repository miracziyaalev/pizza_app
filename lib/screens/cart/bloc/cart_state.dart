part of 'cart_bloc.dart';

sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}

final class CartLoading extends CartState {}

final class CartFailure extends CartState {}

final class CartSuccess extends CartState {
  final List<CartDen> cartList;

  const CartSuccess({required this.cartList});
}
