import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/auth/login.dart';
import 'package:houlala_app/features/main_nav/main_nav_providers.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/input_email.dart';
import 'package:houlala_app/shared_widgets/input_password.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  final passWordRex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!?@#&*~]).{6,}$');

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController(ref);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.minHeight),
              child: IntrinsicHeight(
                child: CustomContainer(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      spacing: 25,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Houla la',
                            style: GoogleFonts.pacifico(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Column(
                          spacing: verticalPadding,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              spacing: 10,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InputEmail(
                                  emailController: emailController,
                                ),
                                InputPassword(
                                  passwordController: passwordController,
                                  passwordRex: passWordRex,
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () => {},
                              child: const Text(
                                "Mot de Passe oublie? / Probleme de connexion?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Column(
                              spacing: 10,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CustomButton(
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      Login login = Login(
                                          email: emailController.text,
                                          passWord: passwordController.text);

                                      authController.login(login);

                                      ref
                                          .read(mainNavStateNotifierProvider
                                              .notifier)
                                          .onItemTaped(0);
                                    }
                                  },
                                  leadingIcon:
                                      HeroIcons.arrowRightEndOnRectangle,
                                  color: Colors.orange,
                                  title: 'Se Connecter',
                                ),
                                Row(
                                  children: [
                                    const Text('Nouveau?'),
                                    TextButton(
                                      onPressed: () => Navigator.of(context)
                                          .pushNamed("/logup"),
                                      child: const Text(
                                        'Creer un compte',
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
