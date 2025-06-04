// cart_item.dart
import 'package:matrix_erp_test/features/products/domain/entities/products_entity.dart';

import '../../../products/data/models/product_model.dart';

class CartItem {
  final ProductEntity product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  double get totalPrice => (product.price??0.0) * quantity.toDouble();
}

// checkout_state.dart
class CartState {
  final List<CartItem> cartItems;
  final double total;
  final bool isLoading;
  final double discount;

  CartState({
    required this.cartItems,
    required this.total,
    this.isLoading = false,
    this.discount = 0
  });

  CartState copyWith({
    List<CartItem>? cartItems,
    double? total,
    bool? isLoading,
  }) {
    return CartState(
      cartItems: cartItems ?? this.cartItems,
      total: total ?? this.total,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}