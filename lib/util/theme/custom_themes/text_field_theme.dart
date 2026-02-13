import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.iconGreyColor,
    suffixIconColor: TColors.iconGreyColor,
    filled: true,
    fillColor: TColors.textFieldFillColor,
    hintStyle: const TextStyle(fontSize: 14, color: TColors.iconGreyColor),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: Colors.black.withValues(alpha: 0.8)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(width: 1, color: TColors.primary),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(width: 1, color: Colors.orange),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.iconGreyColor,
    suffixIconColor: TColors.iconGreyColor,
    filled: true,
    fillColor: TColors.darkCard,
    hintStyle: const TextStyle(fontSize: 14, color: TColors.iconGreyColor),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: Colors.white.withValues(alpha: 0.8)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(width: 1, color: TColors.primary),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(width: 1, color: Colors.orange),
    ),
  );
}
