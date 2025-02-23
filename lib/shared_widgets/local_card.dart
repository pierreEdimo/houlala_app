import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import 'package:houlala_app/helpers/constants.dart';
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
        '/localDetail',
        arguments: local?.dbId,
      ),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          width: 180,
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150.0),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 75,
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
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  local!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
