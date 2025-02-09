import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/controllers/address_controller.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/helpers/bottom_sheet.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/shared_widgets/add_address_button.dart';
import 'package:houlala_app/shared_widgets/address_card.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:toastification/toastification.dart';

import '../features/address/model/address.dart';
import '../helpers/constants.dart';

class AddressScreen extends ConsumerStatefulWidget {
  const AddressScreen({super.key});

  @override
  ConsumerState<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends ConsumerState<AddressScreen> {
  final TextEditingController streetController = TextEditingController();
  final TextEditingController houseNumberController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController poBoxController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AddressController addressController = AddressController(ref);
    AuthController authController = AuthController(ref);

    UserModel? connectedUser = authController.connectedUser;

    void deleteAddress(int id) {
      if (addressController.usersAddresses.length == 1 ||
          id == connectedUser!.deliveryAddressId) {
        CustomToastNotification.showCustomToast(
            'cette adresse est actuellement votre adresse par défaut. Veuillez en créer une nouvelle avant de la supprimer.',
            ToastificationType.warning);
      } else {
        addressController.deleteAddress(id);
      }
    }

    List<Address> addressList = addressController.usersAddresses;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(
            HeroIcons.chevronLeft,
          ),
        ),
        title: Text(
          'Mes adresses',
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CustomContainer(
        loading: addressController.loading,
        errorMessage: addressController.errorMessage,
        child: Stack(
          children: [
            ListView(
              padding: stackDefaultPadding,
              children: addressList
                  .map(
                    (address) => AddressCard(
                      address: address,
                      onDeletePressed: () => deleteAddress(address.id!),
                      onEditPressed: () =>
                          CustomBottomSheet.openSaveAddressForm(
                        _formKey,
                        streetController..text = address.street!,
                        poBoxController..text = address.poBox ?? '',
                        cityController..text = address.city!,
                        houseNumberController..text = address.houseNumber ?? '',
                        lastNameController..text = address.lastName ?? '',
                        firstNameController..text = address.firstName ?? '',
                        addressController,
                        id: address.id,
                        isDefault:
                            connectedUser!.deliveryAddressId == address.id,
                      ),
                    ),
                  )
                  .toList(),
            ),
            AddAddressButton(
              onPressed: () => CustomBottomSheet.openSaveAddressForm(
                  _formKey,
                  streetController,
                  poBoxController,
                  cityController,
                  houseNumberController,
                  lastNameController,
                  firstNameController,
                  addressController,
                  id: null),
            )
          ],
        ),
      ),
    );
  }
}
