import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/colors_manager.dart';
import '../../theme/text_style_manager.dart';


class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final int? maxLines;
  final bool isPassword;
  final bool isReadOnly;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool withRequiredMark;
  final double? width;
  final String? suffixText;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool withBottomPadding;

  const CustomTextField(
      {required this.controller,
        this.label,
        this.hint,
        this.maxLines,
        this.keyboardType,
        this.textInputAction,
        this.isPassword = false,
        this.isReadOnly = false,
        this.withRequiredMark = true,
        this.width,
        this.suffixText,
        this.maxLength,
        this.prefixIcon,
        this.suffixIcon,
        this.withBottomPadding = true,
        super.key});

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  // final _formFieldKey = GlobalKey<FormFieldState<String>>();
  bool visibility = true;

  @override
  void initState() {


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: TextFormField(

        // key: _formFieldKey,
        maxLength: widget.maxLength,

        readOnly: widget.isReadOnly,
        textAlign: TextAlign.start,
        maxLines: widget.maxLines ?? 1,
        controller: widget.controller,
        autofocus: false,
        keyboardType: widget.isPassword
            ? TextInputType.visiblePassword
            : widget.keyboardType,
        obscureText: widget.isPassword ? visibility : false,
        cursorColor: Theme.of(context).primaryColor,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        style: TextStyleManager.f16w400,
        decoration: const InputDecoration().copyWith(

          fillColor: Colors.white,
          filled: true,
          hintText: widget.hint ?? '',
          prefixIcon: widget.prefixIcon,
          suffix: widget.suffixText != null
              ? Text(widget.suffixText!,
              style: TextStyleManager.f14w600
                  .copyWith(color: ColorsManager.black))
              : null,
          suffixIcon:widget.suffixIcon ?? ((widget.isPassword)
              ? IconButton(
            icon: Icon(
              visibility ? Icons.visibility : Icons.visibility_off,
              color: ColorsManager.gray,
            ),
            onPressed: () {
              visibility = !visibility;
              setState(() {});
            },
          )
              : null),
        ),
        onChanged: (value) {
          // _formFieldKey.currentState!.validate();
        },
      ),
    );
  }
}
