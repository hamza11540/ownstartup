import 'package:flutter/material.dart';
import 'package:ownstartup/utils/app_colors.dart';

InputDecoration customInputDecoration(
    {String? labelText,
    String? prefixIcon,
    Widget? suffixIcon,
    TextStyle? labelTextStyle,
    String? hintText,
    TextStyle? hintTextStyle}) {
  return InputDecoration(
    suffixIcon: suffixIcon,
    labelText: labelText,
    labelStyle: labelTextStyle,
    hintText: hintText,
    hintStyle: hintTextStyle,
    counterText: "",

    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(width: 0.2, color: AppColors.mainBlue)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(width: 0.6, color: AppColors.mainBlue)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(width: 0.2, color: AppColors.mainBlue)),
  );
}
