import 'package:flutter/material.dart';
import 'package:matrix_erp_test/features/cart/presentation/views/cart_view.dart';
import 'package:matrix_erp_test/features/products/presentation/views/products_view.dart';
import 'checkout/presentation/views/checkout_panel.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: ProductsScreen()),
                const Expanded(child: CartView())
              ],
            ),
            CheckoutPanel()
          ],
        ),
      ),
    );
  }
}
