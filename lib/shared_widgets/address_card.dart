import 'package:flutter/material.dart';
import 'package:houlala_app/features/address/model/address.dart';
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
      child: SizedBox(
        height: 200,
        child: !hasAddress
            ? Container(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ColumnHeaders(title: 'Adresse de livraison')
            ],
          ),
        )
            : Container(),
      ),
    );
  }
}
