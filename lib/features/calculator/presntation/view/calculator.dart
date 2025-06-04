import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:matrix_erp_test/core/theme/colors_manager.dart';
import 'package:matrix_erp_test/core/theme/text_style_manager.dart';
import 'package:matrix_erp_test/features/calculator/presntation/widgets/calculator_button.dart';

class CalculatorView extends StatefulWidget {
  CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
      controller:controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            readOnly: true,
          ),
          StaggeredGrid.count(
            crossAxisCount: 6,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                  color: ColorsManager.lightRed,
                  icon: Center(
                      child: Text("c",
                          style: TextStyleManager.f20w600
                              .copyWith(color: ColorsManager.darkBlue))),
                  height: 150,
                  onTap: () {
                    controller.text = "0";
                  },
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                  color: ColorsManager.lightPurple,
                  icon: Center(
                      child: Image.asset(
                    "assets/icons/left_arrows.png",
                    height: 16,
                  )),
                  height: 150,
                  onTap: () {
                    //todo
                  },
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("1",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "1";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("2",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "2";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("3",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "3";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("4",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "4";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text(
                      "5",
                      style: TextStyleManager.f20w600
                          .copyWith(color: ColorsManager.darkBlue),
                    )),
                    height: 150,
                    onTap: () {
                      controller.text += "5";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("6",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "6";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("7",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "7";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("8",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "8";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("9",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "9";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text("0",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      controller.text += "0";
                    }),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1.5,
                child: CalculatorButton(
                    color: ColorsManager.grey2,
                    icon: Center(
                        child: Text(".",
                            style: TextStyleManager.f20w600
                                .copyWith(color: ColorsManager.darkBlue))),
                    height: 150,
                    onTap: () {
                      if (!controller.text.contains(".")) {
                        controller.text += ".";
                      }
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
