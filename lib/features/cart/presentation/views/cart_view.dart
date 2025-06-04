import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matrix_erp_test/core/presentation/common_widgets/window_widget.dart';
import 'package:matrix_erp_test/core/theme/colors_manager.dart';
import 'package:matrix_erp_test/core/theme/text_style_manager.dart';
import '../../../../core/constant.dart';
import '../../../../core/presentation/common_widgets/button/custom_filled_button.dart';
import '../../../../core/presentation/common_widgets/button/icon_button.dart';
import '../../../../core/presentation/common_widgets/custom_network_image.dart';
import '../../../../core/theme/box_decoration_manager.dart';
import '../providers/cart_provider.dart';
import '../widgets/users_search.dart';

class CartView extends ConsumerWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartProvider);
    final notifier = ref.read(cartProvider.notifier);

    return  WindowWidget(

      page: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(child: UsersSearch()),
                  const SizedBox(width: 8),
                  CustomIconButton(
                    icon: Icons.delete_outlined,
                    color: ColorsManager.red,
                    onTap: () {
                      //todo empty cart
                    },
                  ),
                  const SizedBox(width: 8),
                  CustomIconButton(
                    icon: Icons.copy,
                    color: ColorsManager.primaryDark,
                    onTap: () {
                      //todo empty show the bill
                    },
                  )
                ],
              ),

              // Product List
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: state.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = state.cartItems[index];
                    return ListTile(
                      leading: CustomNetworkImage(
                        imageUrl: item.product.image ?? '',
                      ),
                      title: Text(item.product.name ?? ''),
                      subtitle:
                      Text('\$${item.product.price} x ${item.quantity}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () =>
                                notifier.removeFromCart(item.product.id ?? ''),
                          ),
                          Text('${item.quantity}'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () => notifier.addToCart(item.product),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade300)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('total_without_tax'.tr(),
                                style: const TextStyle(fontSize: 18)),
                            const SizedBox(width: 8),
                            Text("${state.total}\$",
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Text('tax'.tr(),
                                style: const TextStyle(fontSize: 18)),
                            const SizedBox(width: 8),
                            Text(AppConstant.tax.toString() + " \$",
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: CustomFilledButton(
                          width: 150,
                          text: "add_discount".tr(),
                          textStyle: TextStyleManager.f13w400.copyWith(color: ColorsManager.green),
                          decoration: BoxDecorationManager.lightGreenWithBorder,
                          onTap: () {}),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total:', style: TextStyle(fontSize: 18)),
                        Text(
                            '\$${(state.total + AppConstant.tax).toStringAsFixed(
                                2)}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),



                    // const SizedBox(height: 16),
                    // SizedBox(
                    //   width: double.infinity,
                    //   child: ElevatedButton(
                    //     onPressed: state.isLoading
                    //         ? null
                    //         : () => notifier.processPayment(),
                    //     child: state.isLoading
                    //         ? const CircularProgressIndicator()
                    //         : const Text('Proceed to Payment'),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), panelName: 'cart'.tr(),
    );
  }
}
