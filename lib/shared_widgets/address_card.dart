import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/address.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class AddressCard extends ConsumerWidget {
  final Address? address;
  final VoidCallback? onEditPressed;
  final VoidCallback? onDeletePressed;

  const AddressCard({
    super.key,
    this.address,
    this.onEditPressed,
    this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthController authController = AuthController(ref);
    var connectedUser = authController.connectedUser;
    return CustomCard(
      child: Container(
        constraints: const BoxConstraints(minHeight: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: verticalPadding,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '${address?.lastName} ${address?.firstName}',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    '${address?.street} ${address?.houseNumber}'),
                Text('${address?.city} ${address!.poBox ?? ''}'),
                Text('${address?.country}'),
                connectedUser!.phoneNumber != null
                    ? Row(
                  children: [
                    const Text('Numero de telephone: '),
                    Text('${connectedUser.phoneNumber}')
                  ],
                )
                    : Container()
              ],
            ),
            Row(
              spacing: horizontalPadding,
              children: [
                InkWell(
                  onTap: onEditPressed,
                  child: const Row(
                    spacing: 5,
                    children: [
                      HeroIcon(
                        HeroIcons.pencil,
                        size: 18,
                      ),
                      Text('Modifier'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: onDeletePressed,
                  child: const Row(
                    spacing: 5,
                    children: [
                      HeroIcon(
                        HeroIcons.trash,
                        size: 18,
                      ),
                      Text('Supprimer'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
