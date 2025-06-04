import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../theme/border_radius_manager.dart';

class RoundedBackButton extends StatelessWidget {
  final Function() onTap;
  final Color? backgroundColor;
  const RoundedBackButton({
    super.key,
    required this.onTap,
    this.backgroundColor = Colors.white54,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusManager.circularFull,
      onTap: onTap,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: backgroundColor,
        child: Transform.flip(
            flipX: context.locale.languageCode == 'ar' ? true : false,
            child: const Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
