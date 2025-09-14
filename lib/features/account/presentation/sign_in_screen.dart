import 'package:borsa_app/core/utils/validators.dart';
import 'package:borsa_app/features/account/controller.dart';
import 'package:borsa_app/features/account/data/sign_in_repository.dart';
import 'package:borsa_app/features/account/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CommonAppBar(title: 'Sign Up'),
      ), */
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 300,

                child: Image(
                  image: AssetImage('assets/hissearka.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    spacing: 10,
                    children: <Widget>[
                      CustomTextFormField(
                        controller: _emailController,
                        labelText: 'Email',
                        validator: (String? value) =>
                            Validators().mailValidator(value),
                      ),
                      CustomTextFormField(
                        controller: _passwordController,
                        obsecureIsActive: true,
                        labelText: 'Password',
                        validator: (String? value) =>
                            Validators().passValidator(value),
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0B1D51),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ref.read(
                                signInRepositoryProvider(
                                  _emailController.text,
                                  _passwordController.text,
                                  context,
                                ),
                              );
                            }
                          },
                          child: const Text('Sign In'),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          ref.read(loginProvider.notifier).toggle();
                        },
                        child: Text(
                          'Hesabınız yok mu? Kayıt olun',
                          style: TextStyle(color: Color(0xFF0B1D51)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
