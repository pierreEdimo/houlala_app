import 'package:flutter/cupertino.dart';

const verticalPadding = 25.0;
const horizontalPadding = 11.0;
const stackBottomPadding = 80.0;
BorderRadius radius = BorderRadius.circular(8.0);
double productAspectRatio = 1/1.5;
EdgeInsetsGeometry stackDefaultPadding = const EdgeInsets.only(
    top: verticalPadding,
    bottom: stackBottomPadding,
    right: horizontalPadding,
    left: horizontalPadding);
EdgeInsetsGeometry defaultPadding = const EdgeInsets.symmetric(
    vertical: verticalPadding, horizontal: horizontalPadding);
