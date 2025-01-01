import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';
import 'package:sizer/sizer.dart';

class AddressCard extends StatelessWidget {
  final bool hasAddress;
  final Address? selectedAddress;

  const AddressCard({
    super.key,
    required this.hasAddress,
    this.selectedAddress,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Container(
        constraints: const BoxConstraints(minHeight: 130),
        child: !hasAddress
            ?  Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ColumnHeaders(title: 'Adresse de livraison'),
                SizedBox(
                  height: 9.h,
                  child:  InkWell(
                    onTap: () {},
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeroIcon(HeroIcons.plus),
                        Text("Ajouter votre adresse")
                      ],
                    ),
                  ),
                )
              ],
            )
            : Container(),
      ),
    );
  }
}
