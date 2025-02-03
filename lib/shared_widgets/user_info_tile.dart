import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/screens/c_list_tile.dart';

import '../features/auth/controllers/auth_controller.dart';
import '../helpers/bottom_sheet.dart';

class UserInfoTile extends ConsumerStatefulWidget {
  const UserInfoTile({super.key});

  @override
  ConsumerState<UserInfoTile> createState() => _UserInfoTileState();
}

class _UserInfoTileState extends ConsumerState<UserInfoTile> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthController authController = AuthController(ref);
    final UserModel? connectedUser = authController.connectedUser;

    return CustomListTile(
      onTap: () => CustomBottomSheet.openEditInfosForm(
          _formkey,
          emailController..text = connectedUser!.email ?? '',
          firstNameController..text = connectedUser.firstName ?? '',
          lastNameController..text = connectedUser.lastName ?? '',
          phoneNumberController..text = connectedUser.phoneNumber ?? '',
          authController),
      leading: const HeroIcon(
        HeroIcons.pencil,
        size: 18,
      ),
      title: const Text('Modifier vos informations personnelles'),
    );
  }
}
