import 'package:bloc/bloc.dart';
import 'package:cart_repository/cart_repository.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _cartRepo;

  CartBloc(this._cartRepo) : super(CartInitial()) {
    on<GetCart>((event, emit) async {
      emit(CartLoading());
      try {
        List<CartDen> cartList = await _cartRepo.getCartItems();
        
        emit(CartSuccess(cartList: cartList));
      } catch (e) {
        emit(CartFailure());
      }
    });
  }
}
