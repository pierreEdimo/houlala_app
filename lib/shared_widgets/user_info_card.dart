import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/auth/user_model.dart';
import 'package:houlala_app/helpers/bottom_sheet.dart';
import 'package:houlala_app/shared_widgets/add_info_button.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';

class UserInfoCard extends ConsumerStatefulWidget {
  final bool hasUserInfo;
  final UserModel? userModel;
  final bool? isLoggedIn;

  const UserInfoCard({
    super.key,
    this.userModel,
    this.isLoggedIn,
    required this.hasUserInfo,
  });

  @override
  ConsumerState<UserInfoCard> createState() => _UserInfoCardState();
}

class _UserInfoCardState extends ConsumerState<UserInfoCard> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthController authController = AuthController(ref);
    final UserModel? connectedUser = widget.userModel;

    return CustomCard(
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 80,
        ),
        child: !widget.hasUserInfo
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ColumnHeaders(title: 'Informations personnelles'),
                  AddInfoButton(
                    onPressed: () => CustomBottomSheet.openEditInfosForm(
                        _formkey,
                        emailController..text = connectedUser!.email ?? '',
                        firstNameController
                          ..text = connectedUser.firstName ?? '',
                        lastNameController..text = connectedUser.lastName ?? '',
                        phoneNumberController
                          ..text = connectedUser.phoneNumber ?? '',
                        authController,
                        isLoggedIn: widget.isLoggedIn!),
                    title: 'Ajoutez vos infos personnelles.',
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 10,
                children: [
                  const ColumnHeaders(
                    title: 'Informations personnelles',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                          '${connectedUser?.lastName} ${connectedUser?.firstName}'),
                      Text('${connectedUser?.email}'),
                      Text('${connectedUser?.phoneNumber}'),
                      Container(
                        height: 20,
                        alignment: Alignment.bottomLeft,
                        child: InkWell(
                          onTap: () => CustomBottomSheet.openEditInfosForm(
                              _formkey,
                              emailController
                                ..text = connectedUser!.email ?? '',
                              firstNameController
                                ..text = connectedUser.firstName ?? '',
                              lastNameController
                                ..text = connectedUser.lastName ?? '',
                              phoneNumberController
                                ..text = connectedUser.phoneNumber ?? '',
                              isLoggedIn: widget.isLoggedIn!,
                              authController),
                          child: const Text(
                            'Modifiez vos informations',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
