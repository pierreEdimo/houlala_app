import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../features/sellers/model/seller.dart';

class SellerCard extends StatelessWidget {
  final Seller? seller;

  const SellerCard({
    super.key,
    this.seller,
  });

  bool isUrl(String imageUrl) {
    return Uri.parse(imageUrl).isAbsolute;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          width: 180,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150.0),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: !isUrl(seller!.imageUrl!)
                              ? AssetImage('images/${seller!.imageUrl}')
                              : NetworkImage(seller!.imageUrl!),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: const EdgeInsets.only(top: 5.0),
                  color: Colors.white,
                  height: 50,
                  child: Text(
                    seller!.sellerName!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
