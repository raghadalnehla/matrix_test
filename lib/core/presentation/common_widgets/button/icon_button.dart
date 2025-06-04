import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matrix_erp_test/core/theme/border_radius_manager.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function onTap;

  const CustomIconButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
          height: 38.h,
          width: 38.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadiusManager.circular5,
              color: color.withOpacity(0.1)),
          child: Icon(
            icon,
            color: color,
            size: 16,
          )),
    );
  }
}
