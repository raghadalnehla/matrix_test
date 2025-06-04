// Cart_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../products/domain/entities/products_entity.dart';
import '../../../checkout/data/models/cart_item.dart';

final cartProvider =
    StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier();
});

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(CartState(cartItems: [], total: 0.0));

  void addToCart(ProductEntity product, {quantity = 1}) {
    final newItem = CartItem(product: product, quantity: quantity);
    CartItem? item = state.cartItems
        .where((item) => item.product.id == product.id)
        .firstOrNull;
    if (item != null) {
      state.cartItems.remove(item);
      state = state.copyWith(
        cartItems: state.cartItems
          ..add(CartItem(product: product, quantity: item.quantity + 1)),
        total: state.total + ((product.price ?? 0) * quantity),
      );
    } else {
      state = state.copyWith(
        cartItems: [...state.cartItems, newItem],
        total: state.total + ((product.price ?? 0) * quantity),
      );
    }
  }

  void removeFromCart(String productId) {
    final items = [...state.cartItems];
    final removedItem =
        items.firstWhere((item) => item.product.id == productId);
    items.removeWhere((item) => item.product.id == productId);
    state = state.copyWith(
      cartItems: items,
      total: state.total -
          ((removedItem.product.price ?? 0) * removedItem.quantity),
    );
  }

  Future<void> processPayment() async {
    state = state.copyWith(isLoading: true);
    // Payment processing logic...
    state = state.copyWith(isLoading: false);
  }
}
