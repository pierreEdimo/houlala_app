import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
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
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.only(top: 30.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.minHeight),
              child: IntrinsicHeight(
                child: Form(
                  key: _formkey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'images/houlala1.png',
                            height: 150,
                          ),
                        ),
                        CustomCard(
                          child: Column(
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
                                      }
                                    },
                                    leadingIcon:
                                        HeroIcons.arrowRightEndOnRectangle,
                                    color: Colors.orange,
                                    title: 'Se Connecter',
                                  ),
                                  Row(
                                    children: [
                                      const Text('Vous etes nouveau?'),
                                      TextButton(
                                        onPressed: () => Navigator.of(context)
                                            .pushNamed("/logup"),
                                        child: const Text(
                                          'S\'inscrire',
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
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
