import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartHeader extends StatelessWidget {
  final String? name;
  final String? imageUrl;

  const CartHeader({
    super.key,
    this.name,
    this.imageUrl,
  });

  bool get isAbsolute {
    if (imageUrl != null) {
      final uri = Uri.parse(imageUrl!);
      return uri.hasScheme;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 8,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: isAbsolute
                        ? NetworkImage(imageUrl!)
                        : AssetImage('images/${imageUrl!}'),
                  ),
                ),
              ),
            ),
          ),
          Text(
            name!,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
