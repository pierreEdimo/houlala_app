import 'package:flutter/material.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/helpers/bottom_sheet.dart';
import 'package:houlala_app/shared_widgets/add_info_button.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';

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
                AddInfoButton(
                  onPressed: () => CustomBottomSheet.openSaveAddressForm(),
                  title: 'Ajoutez votre adresse',
                )
              ],
            )
            : Container(),
      ),
    );
  }
}
