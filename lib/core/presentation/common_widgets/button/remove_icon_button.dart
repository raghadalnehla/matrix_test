import 'package:flutter/material.dart';

import '../../../theme/colors_manager.dart';

class RemoveIconButton extends StatelessWidget {
  final double? iconSize;
  final double? radius;
  final Function() onTap;
  const RemoveIconButton(
      {super.key, required this.onTap, this.radius, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Container(
        width: radius,
        height: radius,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: ColorsManager.primaryDark,
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(100)),
        child: FittedBox(
          child: Icon(
            Icons.close,
            color: Colors.white,
            size: iconSize ?? 13,
          ),
        ),
      ),
    );
  }
}
