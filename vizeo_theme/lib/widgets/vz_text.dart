import 'package:flutter/material.dart';
import 'package:vizeo_theme/src/private/enum.dart';
import 'package:vizeo_theme/src/private/color_utils_lib.dart';

class VzText extends Text {
  late final String data;
  late final int maxlines;
  final TextStyle? textStyleCustom;
  final Color? color;
  final TextOverflow? overflow;
  final bool softWrap;
  final TextAlign textAlign;
  final Key? key;
  final double? textScaleFactor;

  VzText.typePrimary({
    required this.data,
    TypeDeTextStyle style = TypeDeTextStyle.body2,
    this.maxlines = 10,
    this.softWrap = true,
    this.textAlign = TextAlign.start,
    this.color,
    this.textStyleCustom,
    this.overflow,
    this.key,
    this.textScaleFactor,
  }) : super(
          data,
          overflow: overflow,
          softWrap: softWrap,
          maxLines: maxlines,
          textAlign: textAlign,
          key: key,
          textScaleFactor: textScaleFactor,
          style: textStyleCustom ??
              style.textStyle.copyWith(
                color: color ?? ColorUtils.colorStyle(VzTextType.typePrimary),
              ),
        );

  VzText.typeSecondary({
    required this.data,
    TypeDeTextStyle style = TypeDeTextStyle.body2,
    this.maxlines = 10,
    this.softWrap = true,
    this.textAlign = TextAlign.start,
    this.color,
    this.textStyleCustom,
    this.overflow,
    this.key,
    this.textScaleFactor,
  }) : super(
          data,
          overflow: overflow,
          softWrap: softWrap,
          maxLines: maxlines,
          textAlign: textAlign,
          key: key,
          textScaleFactor: textScaleFactor,
          style: textStyleCustom ??
              style.textStyle.copyWith(
                color: color ?? ColorUtils.colorStyle(VzTextType.typeSecondary),
              ),
        );

  VzText.typeTertiary({
    required this.data,
    TypeDeTextStyle style = TypeDeTextStyle.body2,
    this.maxlines = 10,
    this.softWrap = true,
    this.textAlign = TextAlign.start,
    this.color,
    this.textStyleCustom,
    this.overflow,
    this.key,
    this.textScaleFactor,
  }) : super(
          data,
          overflow: overflow,
          softWrap: softWrap,
          maxLines: maxlines,
          textAlign: textAlign,
          key: key,
          textScaleFactor: textScaleFactor,
          style: textStyleCustom ??
              style.textStyle.copyWith(
                color: color ?? ColorUtils.colorStyle(VzTextType.typeTertiary),
              ),
        );
}
