import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';

class LogupScreen extends StatefulWidget {
  const LogupScreen({super.key});

  @override
  State<LogupScreen> createState() => _LogupScreenState();
}

class _LogupScreenState extends State<LogupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final passWordRex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!?@#\$&*~]).{6,}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.minHeight),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
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
                          height: 10,
                        ),
                        TextFormField(
                          controller: confirmPasswordController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 11.0,
                              ),
                              labelText: "répéter mot de passe",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            value = confirmPasswordController.text;
                            if (value.isEmpty) {
                              return 'Inserer un Mot de passe';
                            }
                
                            if (value != passwordController.text) {
                              return 'Le mot de passe ne correspond pas';
                            }
                
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: verticalPadding,
                        ),
                        CustomButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (kDebugMode) {
                                print('Hello');
                              }
                            }
                          },
                          leadingIcon: HeroIcons.arrowRightEndOnRectangle,
                          color: Colors.orange,
                          title: 'Créer un compte',
                        ),
                        const SizedBox(
                          height: 8,
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
                    ),
                  ),
                ),
              ),
            );
          } ,
        ),
      ),
    );
  }
}
