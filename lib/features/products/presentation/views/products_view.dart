import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrix_erp_test/core/presentation/common_widgets/text_field.dart';
import 'package:matrix_erp_test/core/presentation/common_widgets/window_widget.dart';
import 'package:matrix_erp_test/core/theme/box_decoration_manager.dart';
import 'package:matrix_erp_test/core/theme/colors_manager.dart';
import 'package:matrix_erp_test/features/products/presentation/views/widgets/product_widget.dart';

import '../../../../core/presentation/common_widgets/button/custom_filled_button.dart';
import '../../../../core/structure_utils/errors/failures.dart';
import '../providers/products_providers.dart';

class ProductsScreen extends ConsumerWidget {
  TextEditingController searchController = TextEditingController();

  ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsState = ref.watch(productsListProvider);

    return WindowWidget(
      page: Column(children: [
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                controller: searchController,
                prefixIcon:  const Icon(Icons.search, color: ColorsManager.darkBlue,),
                hint: "looking_for_products".tr(),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomFilledButton(
                icon: Image.asset("assets/icons/filter.png", height: 16.h,),
                text: "filter",
                onTap: () {},
                decoration: BoxDecorationManager.petrolButton,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        productsState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) {
            // Handle specific failures
            if (error is ServerFailure) {
              return Center(child: Text('Server error: ${error.message}'));
            } else if (error is CacheFailure) {
              return Center(child: Text('Cache error: ${error.message}'));
            }
            return Center(child: Text('Unexpected error: $error'));
          },
          data: (either) => either.fold(
            (failure) => Center(child: Text(failure.message ?? "")),
            (products) => GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductWidget(product: product);
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8.sp,
                mainAxisSpacing: 8.sp,
                childAspectRatio: 2.1,
              ),
            ),
          ),
        ),
      ]),
      panelName: 'products'.tr(),
    );
  }
}
