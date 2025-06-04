import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix_erp_test/features/calculator/presntation/view/calculator.dart';
import 'package:matrix_erp_test/features/cart/presentation/views/cart_view.dart';
import 'package:matrix_erp_test/features/checkout/presentation/views/checkout_panel.dart';
import 'package:matrix_erp_test/features/checkout/presentation/views/checkout_view.dart';
import 'package:matrix_erp_test/features/products/presentation/views/products_view.dart';

import '../core/presentation/common_widgets/window_widget.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(child: ProductsScreen()),
            Expanded(
              child: CheckoutPanel()
            ),
            const Expanded(child: CartView())
          ],
        ),
      ),
    );
  }
}
