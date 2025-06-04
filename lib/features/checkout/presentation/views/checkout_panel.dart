import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/common_widgets/text_field.dart';
import '../../../../core/presentation/common_widgets/window_widget.dart';
import '../../../../core/theme/colors_manager.dart';
import '../../../calculator/presntation/view/calculator.dart';
import 'checkout_view.dart';

class CheckoutPanel extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

   CheckoutPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowWidget(
      page: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              width: MediaQuery.sizeOf(context).width,
              controller: searchController,
              prefixIcon:  const Icon(Icons.search, color: ColorsManager.darkBlue,),
              hint: "looking_for_products".tr(),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: CalculatorView()),
              Expanded(child: CheckoutView()),
            ],
          ),
        ],
      ),
      panelName: 'checkout'.tr(),
    );
  }
}
