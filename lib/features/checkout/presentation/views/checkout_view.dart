import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrix_erp_test/core/theme/colors_manager.dart';
import 'package:matrix_erp_test/core/theme/text_style_manager.dart';
import 'package:matrix_erp_test/features/cart/presentation/providers/cart_provider.dart';

import '../../../../core/presentation/common_widgets/custom_network_image.dart';
import '../widgets/no_product.dart';

class CheckoutView extends ConsumerWidget {

   CheckoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final cartState = ref.watch(cartProvider);
    final notifier = ref.read(cartProvider.notifier);


    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          children: [
            Image.asset("assets/icons/sale.png", height: 24,),
            const SizedBox(width: 8),
            Text("sale_and_payment".tr(), style: TextStyleManager.f16w400.copyWith(color: ColorsManager.darkBlue),),
      
          ],
        ),
          cartState.cartItems.isEmpty? const NoProductWidget():
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: cartState.cartItems.length,
            itemBuilder: (context, index) {
              final item = cartState.cartItems[index];
              return ListTile(
                leading: CustomNetworkImage(
                  imageUrl: item.product.image ?? '',
                  height: 50,
                  width: 50,
                ),
                title: Text(item.product.name ?? ''),
                subtitle:
                Text('\$${item.product.price} x ${item.quantity}'),
                trailing: Text('${item.quantity}'),
              );
            },
          )
      ],
    );
  }
}
