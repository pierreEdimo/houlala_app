import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnHeaders extends StatelessWidget {
  final String? title;

  const ColumnHeaders({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: GoogleFonts.poppins(
        fontSize: 18.0,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
