import 'package:flutter/material.dart';
import 'package:matrix_erp_test/features/cart/presentation/views/cart_view.dart';
import 'package:matrix_erp_test/features/products/presentation/views/products_view.dart';

import '../../../features/checkout/presentation/views/checkout_panel.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductsScreen(),
            const CartView(),
            CheckoutPanel()
          ],
        ),
      ),
    );
  }
}
