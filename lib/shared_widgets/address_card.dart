import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/address/controllers/address_controller.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/helpers/bottom_sheet.dart';
import 'package:houlala_app/shared_widgets/add_info_button.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';

class AddressCard extends ConsumerStatefulWidget {
  final bool hasAddress;
  final Address? selectedAddress;
  final bool? loading;

  const AddressCard({
    super.key,
    required this.hasAddress,
    this.selectedAddress,
    this.loading,
  });

  @override
  ConsumerState<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends ConsumerState<AddressCard> {
  final TextEditingController streetController = TextEditingController();
  final TextEditingController houseNumberController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController poBoxController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final AddressController addressController = AddressController(ref);

    return CustomCard(
      child: Container(
        constraints: const BoxConstraints(minHeight: 80),
        child: Builder(
          builder: (context) {
            if (widget.loading! || widget.selectedAddress == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return !widget.hasAddress
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ColumnHeaders(title: 'Adresse de livraison'),
                      AddInfoButton(
                        onPressed: () => CustomBottomSheet.openSaveAddressForm(
                            _formkey,
                            streetController,
                            poBoxController,
                            cityController,
                            houseNumberController,
                            addressController),
                        title: 'Ajoutez votre adresse',
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 10,
                    children: [
                      const ColumnHeaders(title: 'Adresse de livraison'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                              '${widget.selectedAddress?.street} ${widget.selectedAddress?.houseNumber}'),
                          Text(
                              '${widget.selectedAddress?.city} ${widget.selectedAddress?.poBox}, ${widget.selectedAddress?.country}'),
                          Container(
                            height: 20,
                            alignment: Alignment.bottomLeft,
                            child: InkWell(
                              onTap: () =>
                                  CustomBottomSheet.openSaveAddressForm(
                                      _formkey,
                                      streetController..text = widget.selectedAddress!.street!,
                                      poBoxController..text = widget.selectedAddress!.poBox ?? '',
                                      cityController..text = widget.selectedAddress!.city!,
                                      houseNumberController..text = widget.selectedAddress!.houseNumber ?? '',
                                      addressController,
                                      id: widget.selectedAddress?.id),
                              child: const Text(
                                'Modifiez votre adresse',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
