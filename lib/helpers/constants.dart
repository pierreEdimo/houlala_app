import 'package:flutter/material.dart';

const verticalPadding = 25.0;
const horizontalPadding = 11.0;
const stackBottomPadding = 80.0;
Divider divider = const Divider(height: 1, thickness: 1);
BorderRadius radius = BorderRadius.circular(8.0);
double productAspectRatio = 1 / 1.5;
EdgeInsetsGeometry stackDefaultPadding = const EdgeInsets.only(
    top: verticalPadding,
    bottom: stackBottomPadding,
    right: horizontalPadding,
    left: horizontalPadding);
EdgeInsetsGeometry inputPadding =
    const EdgeInsets.symmetric(horizontal: 8, vertical: 11);
EdgeInsetsGeometry defaultPadding = const EdgeInsets.symmetric(
    vertical: verticalPadding, horizontal: horizontalPadding);
