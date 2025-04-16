import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';

import '../features/term/provider/term_provider.dart';

class ConditionScreen extends ConsumerWidget {
  const ConditionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String htmlContent = ref.watch(termStateNotifierProvider).htmlContent;
    bool loading = ref.watch(termStateNotifierProvider).loading;

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          "Conditions d'utilisations",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: CustomContainer(
        loading: loading,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 110),
            child: Html(data: htmlContent),
          ),
        ),
      ),
    );
  }
}
