import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrix_erp_test/core/presentation/common_widgets/custom_network_image.dart';
import 'package:matrix_erp_test/core/theme/colors_manager.dart';
import 'package:matrix_erp_test/features/products/domain/entities/products_entity.dart';

import '../../../../cart/presentation/providers/cart_provider.dart';

class ProductWidget extends ConsumerWidget {
  final ProductEntity product;

  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorsManager.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          CustomNetworkImage(imageUrl: product.image ?? '',
            height: 35.h,
            width: 35.h,
            fit: BoxFit.fill,
            borderRadius: 8,),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(product.name ?? '', maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  maxFontSize: 14,
                  minFontSize: 8,
                  style: const TextStyle(fontWeight: FontWeight.bold),),
                Flexible(child: AutoSizeText(
                  "${"bar_code".tr()} ${product.code ?? ''}",
                  maxFontSize: 12, minFontSize: 8, maxLines: 2,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (product.price != null) Flexible(child: AutoSizeText(
                        "${product.price!}\$", maxFontSize: 12,maxLines: 1,
                        minFontSize: 8,
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),)),
                    GestureDetector(
                        onTap: (){
                          ref.read(cartProvider.notifier).addToCart(product);
                        },
                        child: const Icon(Icons.add_circle_outline))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
