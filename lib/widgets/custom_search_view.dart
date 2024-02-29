import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment = Alignment.center,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines = 1,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final Alignment alignment;
  final double? width;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextStyle? textStyle;
  final TextInputType textInputType;
  final int maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus,
          style: textStyle ?? CustomTextStyles.labelLargeSFProDisplayWhiteA700,
          keyboardType: textInputType,
          maxLines: maxLines,
          decoration: _getInputDecoration(),
          validator: validator,
          onChanged: onChanged ?? (_) {},
        ),
      ),
    );
  }

  InputDecoration _getInputDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? CustomTextStyles.labelLargeSFProDisplayWhiteA700,
      prefixIcon: prefix ?? _defaultPrefixIcon(),
      prefixIconConstraints: prefixConstraints ?? BoxConstraints(maxHeight: 44.v),
      suffixIcon: suffix ?? _defaultSuffixIcon(),
      suffixIconConstraints: suffixConstraints ?? BoxConstraints(maxHeight: 44.v),
      isDense: true,
      contentPadding: contentPadding ?? EdgeInsets.only(top: 14.v, right: 14.h, bottom: 14.v),
      fillColor: fillColor ?? appTheme.blueGray80003,
      filled: filled,
      border: borderDecoration ?? _defaultBorder(),
      enabledBorder: borderDecoration ?? _defaultBorder(),
      focusedBorder: borderDecoration ?? _defaultBorder(),
    );
  }

  Widget _defaultPrefixIcon() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 12.v),
      child: CustomImageView(
        imagePath: ImageConstant.imgSearchWhiteA700,
        height: 20.adaptSize,
        width: 20.adaptSize,
      ),
    );
  }

  Widget _defaultSuffixIcon() {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: IconButton(
        onPressed: () => controller?.clear(),
        icon: Icon(Icons.clear, color: Colors.grey.shade600),
      ),
    );
  }

  OutlineInputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.h),
      borderSide: BorderSide.none,
    );
  }
}
