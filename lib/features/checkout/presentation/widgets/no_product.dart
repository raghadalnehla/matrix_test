import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:matrix_erp_test/core/theme/box_decoration_manager.dart';
import 'package:matrix_erp_test/core/theme/colors_manager.dart';
import 'package:matrix_erp_test/core/theme/text_style_manager.dart';

class NoProductWidget extends StatelessWidget {
  const NoProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: AlignmentDirectional.centerStart,
      //height: 40,
      decoration: BoxDecorationManager.secondaryButton,
      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("no_products_added_yet".tr(), style: TextStyleManager.f8w400.copyWith(color: ColorsManager.darkBlue),),
          const SizedBox(width: 8,),
          const Icon(Icons.shopping_cart, color: ColorsManager.darkBlue,size: 8,)
        ],
      ),

    );
  }
}
