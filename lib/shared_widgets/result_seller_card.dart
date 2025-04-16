import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class ResultSellerCard extends StatelessWidget {
  final LocalModel? local;

  const ResultSellerCard({super.key, this.local});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        '/store-detail',
        arguments: local?.dbId,
      ),
      child: CustomCard(
        child: Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/${local!.imageUrl}'),
                  )),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    local!.name!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
