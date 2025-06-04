import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../theme/border_radius_manager.dart';
import '../../../theme/text_style_manager.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final double? width;
  final Decoration decoration;
  final Function() onTap;
  final TextStyle? textStyle;
  final Widget? icon;

  const CustomFilledButton({
    super.key,
    required this.text,
    required this.decoration,
    this.width,
    required this.onTap,
    this.textStyle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusManager.circular15,
      onTap: () {
        onTap();
      },
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          decoration: decoration,
          width: width,
          height: 38.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  text,
                  style: textStyle ??
                      TextStyleManager.f16w600.copyWith(color: Colors.white),
                ),
              ),
              if (icon != null) ...[const SizedBox(width: 12,), icon!]
            ],
          )),
    );
  }
}
