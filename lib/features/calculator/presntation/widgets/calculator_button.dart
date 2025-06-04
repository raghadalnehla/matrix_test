import 'package:flutter/cupertino.dart';
import 'package:matrix_erp_test/core/theme/border_radius_manager.dart';

class CalculatorButton extends StatelessWidget {
  final Color color;
  final Widget icon;
  final double height;
  final Function onTap;
  const CalculatorButton({super.key, required this.color, required this.icon, required this.height, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadiusManager.circular5
        ),
        child: icon,
      ),
    );
  }
}
