import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';

import '../features/about/provider/about_provider.dart';

class AboutScreen extends ConsumerWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String htmlContent = ref.watch(aboutStateNotifierProvider).htmlContent;
    bool loading = ref.watch(aboutStateNotifierProvider).loading;

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          'A propos',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: CustomContainer(
          loading: loading,
          errorMessage: '',
          child: SingleChildScrollView(
            child: Html(
              data: htmlContent,
              style: {
                'h4': Style(
                    padding: HtmlPaddings.zero,
                    margin: Margins.zero,
                    fontWeight: FontWeight.bold),
                'p': Style(
                  padding: HtmlPaddings.zero,
                  margin: Margins.zero,
                ),
                '.info-container, .mission-container, .contact-container':
                    Style(
                  margin: Margins.only(
                    bottom: verticalPadding,
                  ),
                ),
                '.contact-content, .intro-container, ul ': Style(
                  margin: Margins.only(top: 10)
                )
              },
            ),
          )),
    );
  }
}
