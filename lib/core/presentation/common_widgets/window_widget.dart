import 'package:flutter/material.dart';
import 'package:matrix_erp_test/core/theme/border_radius_manager.dart';
import 'package:matrix_erp_test/core/theme/box_decoration_manager.dart';

class WindowWidget extends StatelessWidget {
  final Widget page;
  final String panelName;
  const WindowWidget({super.key, required this.page, required this.panelName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadiusManager.circular12,
        color: Colors.white
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecorationManager.greyCir12Top,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
         child: Row(
           children: [
             Text(panelName),
           ],
         ),
          ),
          page
        ],
      ),
    );
  }
}
