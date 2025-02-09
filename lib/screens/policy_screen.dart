import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';

import '../features/policy/provider/policy_provider.dart';

class PolicyScreen extends ConsumerWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String htmlContent = ref.watch(policyStateNotifierProvider).htmlContent;
    bool loading = ref.watch(policyStateNotifierProvider).loading;

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          "Politique de confidentialité",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: CustomContainer(
        loading: loading,
        errorMessage: '',
        child: SingleChildScrollView(
          child: Html(data: htmlContent),
        ),
      ),
    );
  }
}
