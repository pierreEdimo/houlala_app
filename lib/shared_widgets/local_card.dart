import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/locals/local_model.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class LocalCard extends StatelessWidget {
  final LocalModel? local;

  const LocalCard({
    super.key,
    this.local,
  });

  bool isUrl(String imageUrl) {
    return Uri.parse(imageUrl).isAbsolute;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        '/store-detail',
        arguments: local?.dbId,
      ),
      child: CustomCard(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: !isUrl(local!.imageUrl!)
                        ? AssetImage('images/${local!.imageUrl}')
                        : NetworkImage(local!.imageUrl!),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  local!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
