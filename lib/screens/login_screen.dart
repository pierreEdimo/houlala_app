import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';

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
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!?@#\$&*~]).{6,}$');

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
                        const SizedBox(
                          height: verticalPadding,
                        ),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 11.0,
                              ),
                              labelText: "Email",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            value = emailController.text;
                            if (value.isEmpty) {
                              return 'Inserer une adresse E-mail';
                            } else if (!value.contains('@')) {
                              return 'Svp entrer une E-mail valide';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 11.0,
                              ),
                              labelText: "Mot de passe",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            value = passwordController.text;
                            if (value.isEmpty) {
                              return 'Inserer un Mot de passe';
                            }
                            if (value.length < 7) {
                              return 'votre mot de passe doit avoir minimum 7 caracteres';
                            }
                            if (!passWordRex.hasMatch(value)) {
                              return 'mot de passe invalide';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: verticalPadding,
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
                        const SizedBox(
                          height: verticalPadding,
                        ),
                        CustomButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              if (kDebugMode) {
                                print('Hello');
                              }
                              Login login = Login(
                                  email: emailController.text,
                                  passWord: passwordController.text);

                              authController.login(login);
                            }
                          },
                          leadingIcon: HeroIcons.arrowRightEndOnRectangle,
                          color: Colors.orange,
                          title: 'Se Connecter',
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Text('Vous etes nouveau?'),
                            TextButton(
                              onPressed: () =>
                                  Navigator.of(context).pushNamed("/logup"),
                              child: const Text(
                                'S\'inscrire',
                              ),
                            )
                          ],
                        )
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
