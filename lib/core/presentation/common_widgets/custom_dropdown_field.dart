// ignore_for_file: deprecated_member_use

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/screen_manager.dart';
import '../../theme/box_decoration_manager.dart';
import '../../theme/colors_manager.dart';
import '../../theme/text_style_manager.dart';

class CustomDropDown<Type> extends StatefulWidget {
  final String hint;
  final List<Type> items;
  final ValueChanged onChanged;
  final Type? initValue;
  final bool withRequiredMark;
  final double? width;
  final double? height;
  final String Function()? disabledName;
  final Widget? prefix;

  const CustomDropDown(
      {super.key,
      this.initValue,
      required this.hint,
      required this.items,
      required this.onChanged,
      required this.withRequiredMark,
      this.width,
      this.height,
      this.disabledName,
      this.prefix});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState<Type> extends State<CustomDropDown> {
  Type? selectedValue;

  @override
  void initState() {
    selectedValue = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      iconStyleData: IconStyleData(
          icon: Padding(
        padding:
            EdgeInsetsDirectional.only(end: 4.w),
        child: const Icon(Icons.arrow_drop_down_rounded),
      )),
      underline: const SizedBox.shrink(),
      isExpanded: true,
      hint: Padding(
          padding: EdgeInsetsDirectional.only(
              start: ScreenManager.fromWidth(4)),
          child: Text(widget.hint,
              style: TextStyleManager.f16w400
                  .copyWith(color: ColorsManager.hintColor))),
      buttonStyleData: ButtonStyleData(
          height: 38,
          decoration: BoxDecorationManager.textField,
          overlayColor:
              const MaterialStatePropertyAll(Colors.transparent)),
      dropdownStyleData: DropdownStyleData(
        width: widget.width ?? ScreenManager.fromWidth(100) - 32,
        maxHeight: widget.height ?? 160,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
      ),
      items: [
        ...widget.items.map(
          (e) => DropdownMenuItem<Type>(
            value: e,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: ScreenManager.fromWidth(4)),
              child: Text((e is String) ? tr(e) : e.name,
                  style: TextStyleManager.f14w400
                      .copyWith(color: ColorsManager.black)),
            ),
          ),
        )
      ],
      value: selectedValue,
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
        if (selectedValue != null) {
          if (selectedValue is String) {
            widget.onChanged(selectedValue);
          } else {
            widget.onChanged((selectedValue as dynamic).id);
          }
        }
      },
    );
  }
}
