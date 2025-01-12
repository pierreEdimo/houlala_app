import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/register.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/input_email.dart';
import 'package:houlala_app/shared_widgets/input_password.dart';
import 'package:houlala_app/shared_widgets/input_text.dart';

class LogupScreen extends ConsumerStatefulWidget {
  const LogupScreen({super.key});

  @override
  ConsumerState<LogupScreen> createState() => _LogupScreenState();
}

class _LogupScreenState extends ConsumerState<LogupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final specialCharRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!?@#&*~]).{6,}$');

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController(ref);

    void register() {
      Register register = Register(
        userName: userNameController.text,
        passWord: passwordController.text,
        email: emailController.text
      );

      authController.register(register);
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.only(top: 30.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.minHeight),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: horizontalPadding),
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
                                  InputText(
                                    textEditingController: userNameController,
                                    mustFill: true,
                                    keyboardType: TextInputType.text,
                                    infoMessage: "Inserez votre nom d'utilisateur",
                                    placeholder: "Nom d'utilisateur",
                                  ),
                                  InputPassword(
                                    passwordRex: specialCharRegex,
                                    passwordController: passwordController,
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 10,
                                children: [
                                  CustomButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        if (kDebugMode) {
                                          print('Hello');
                                        }
                                        register();
                                      }
                                    },
                                    leadingIcon: HeroIcons.arrowRightEndOnRectangle,
                                    color: Colors.orange,
                                    title: 'Créer un compte',
                                  ),
                                  Row(
                                    children: [
                                      const Text('Vous avez un compte?'),
                                      TextButton(
                                        onPressed: () => Navigator.of(context).pop(),
                                        child: const Text('Se Connecter'),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
