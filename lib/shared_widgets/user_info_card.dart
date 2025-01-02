import 'package:flutter/material.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/shared_widgets/add_info_button.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';

class UserInfoCard extends StatelessWidget {
  final bool hasUserInfo;
  final UserModel? userModel;

  const UserInfoCard({
    super.key,
    this.userModel,
    required this.hasUserInfo,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 130,
        ),
        child: !hasUserInfo ? Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ColumnHeaders(title: 'Informations personnelles'),
            AddInfoButton(
              onPressed: () {},
              title: 'Ajoutez vos infos personnelles.',
            )
          ],
        ) : Container(),
      ),
    );
  }
}
