import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/controllers/address_controller.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/edit_info.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/main.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';
import 'package:houlala_app/shared_widgets/input_email.dart';
import 'package:houlala_app/shared_widgets/input_text.dart';
import 'package:sizer/sizer.dart';

class CustomBottomSheet {
  static void openBottomSheet(Widget child, {double? height}) {
    Get.bottomSheet(
      Container(
        width: 100.w,
        color: Colors.transparent,
        child: Wrap(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: horizontalPadding,
                    right: horizontalPadding,
                    bottom: verticalPadding),
                child: child,
              ),
            ),
          ],
        ),
      ),
      enableDrag: false,
    );
  }

  static void openBottomSheetOnSuccess() {
    openBottomSheet(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: const Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                Text('Votre produit a été ajouté au panier avec succès.')
              ],
            ),
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: CustomButton(
                  onPressed: () => navigatorKey.currentState?.pop(),
                  color: Colors.grey,
                  title: 'Continuer',
                ),
              ),
              Expanded(
                child: CustomButton(
                  onPressed: () =>
                      navigatorKey.currentState?.popAndPushNamed('/cart'),
                  title: 'Panier',
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  static void openEditInfosForm(
    GlobalKey<FormState> formkey,
    TextEditingController emailController,
    TextEditingController firstNameController,
    TextEditingController lastNameController,
    TextEditingController phoneNumberController,
    AuthController authController,
  ) {
    openBottomSheet(
      StatefulBuilder(
        builder: (context, setState) {
          return Form(
            key: formkey,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ColumnHeaders(
                        title: "Informations personnelles",
                      ),
                      IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const HeroIcon(HeroIcons.xMark), )
                    ],
                  ),
                ),
                Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InputText(
                      placeholder: 'Nom',
                      textEditingController: lastNameController,
                      keyboardType: TextInputType.text,
                      infoMessage: 'Inserez votre nom',
                      mustFill: true,
                    ),
                    InputText(
                      placeholder: 'Prenom',
                      textEditingController: firstNameController,
                      keyboardType: TextInputType.text,
                      infoMessage: 'Inserez votre prenom',
                      mustFill: true,
                    ),
                    InputEmail(
                      emailController: emailController,
                    ),
                    InputText(
                      placeholder: 'Numero de telephone',
                      textEditingController: phoneNumberController,
                      keyboardType: TextInputType.text,
                      infoMessage: 'Inserez votre Numero de telephone',
                      mustFill: true,
                    ),
                    CustomButton(
                      leadingIcon: HeroIcons.serverStack,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          EditInfo info = EditInfo(
                            email: emailController.text,
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            phoneNumber: phoneNumberController.text,
                          );

                          authController.editUserInfo(info);
                        }
                      },
                      title: 'Enregistrer',
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  static void openSaveAddressForm(
      GlobalKey<FormState> formkey,
      TextEditingController streetController,
      TextEditingController poBoxController,
      TextEditingController cityController,
      TextEditingController houseNumberController,
      TextEditingController lastNameController,
      TextEditingController firstNameController,
      AddressController addressController,
      {int? id,
      bool? isDefault = false}) {
    openBottomSheet(
      StatefulBuilder(builder: (context, setState) {
        return Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ColumnHeaders(
                      title: "Adresse de livraison",
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const HeroIcon(HeroIcons.xMark),
                    )
                  ],
                ),
              ),
              Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Container(
                              width: 18,
                              height: 18,
                              margin: const EdgeInsets.only(left: 5, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: isDefault!
                                    ? Colors.orange
                                    : const Color(0xffbffffff),
                                border: Border.all(
                                  color: const Color(0xffb000000),
                                ),
                              ),
                              child: isDefault
                                  ? const Icon(
                                      Icons.check,
                                      size: 8,
                                      color: Color(0xffbffffff),
                                    )
                                  : const Icon(
                                      Icons.check_box_outline_blank,
                                      size: 10.0,
                                      color: Colors.transparent,
                                    )),
                          const Text('Choisissez comme adresse par defaut')
                        ],
                      ),
                    ),
                  ),
                  InputText(
                    placeholder: 'Nom de famille',
                    textEditingController: lastNameController,
                    keyboardType: TextInputType.text,
                    infoMessage: 'Insérez votre nom de famille',
                    mustFill: true,
                  ),
                  InputText(
                    placeholder: 'Prenom',
                    textEditingController: firstNameController,
                    keyboardType: TextInputType.text,
                    infoMessage: 'Insérez votre prenom',
                    mustFill: true,
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        flex: 2,
                        child: InputText(
                          placeholder: 'Adresse',
                          textEditingController: streetController,
                          keyboardType: TextInputType.text,
                          infoMessage: 'Insérez votre adresse',
                          mustFill: true,
                        ),
                      ),
                      Flexible(
                        child: InputText(
                          placeholder: 'Nr',
                          textEditingController: houseNumberController,
                          keyboardType: TextInputType.text,
                          mustFill: false,
                        ),
                      )
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Flexible(
                          child: InputText(
                        placeholder: 'Boite postalle',
                        textEditingController: poBoxController,
                        keyboardType: TextInputType.text,
                        mustFill: false,
                      )),
                      Expanded(
                        flex: 2,
                        child: InputText(
                          placeholder: 'Ville',
                          textEditingController: cityController,
                          keyboardType: TextInputType.text,
                          mustFill: true,
                          infoMessage: 'Insérez votre ville',
                        ),
                      )
                    ],
                  ),
                  CustomButton(
                    leadingIcon: HeroIcons.serverStack,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Address address = Address(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            street: streetController.text,
                            poBox: poBoxController.text,
                            country: 'Cameroun',
                            houseNumber: houseNumberController.text,
                            city: cityController.text);
                        if (id != null) {
                          addressController.editAddress(id, address);
                        } else {
                          addressController.createAddress(address);
                        }
                        firstNameController.clear();
                        lastNameController.clear();
                        streetController.clear();
                        poBoxController.clear();
                        cityController.clear();
                        houseNumberController.clear();
                      }
                    },
                    title: 'Enregistrer',
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
