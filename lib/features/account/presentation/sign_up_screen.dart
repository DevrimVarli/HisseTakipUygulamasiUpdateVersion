import 'package:borsa_app/core/utils/validators.dart';
import 'package:borsa_app/features/account/controller.dart';
import 'package:borsa_app/features/account/data/sign_up_repository.dart';
import 'package:borsa_app/features/account/domain/sign_up_params.dart';
import 'package:borsa_app/features/account/presentation/widgets/custom_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
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
                        labelText: 'email'.tr(),
                        validator: (String? value) =>
                            Validators().mailValidator(value),
                      ),
                      CustomTextFormField(
                        controller: _passwordController,
                        labelText: 'password'.tr(),
                        obsecureIsActive: true,
                        validator: (String? value) =>
                            Validators().passValidator(value),
                      ),
                      CustomTextFormField(
                        controller: _phoneController,
                        labelText: 'phoneNumber'.tr(),
                        validator: (String? value) =>
                            Validators().phoneNumberValidator(value),
                      ),
                      CustomTextFormField(
                        controller: _firstNameController,
                        labelText: 'name'.tr(),
                        validator: (String? value) =>
                            Validators().firstNameValidator(value),
                      ),
                      CustomTextFormField(
                        controller: _lastNameController,
                        labelText: 'surname'.tr(),
                        validator: (String? value) =>
                            Validators().lastNameValidator(value),
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
                              // Tüm validasyonlar geçti, kayıt işlemini başlat
                              ref.read(
                                signUpProvider(
                                  SignUpParams(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                    phoneNumber: _phoneController.text,
                                    firstName: _firstNameController.text,
                                    lastName: _lastNameController.text,
                                  ),
                                  context,
                                ),
                              );
                            }
                          },
                          child:  Text('signUp'.tr()),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          ref.read(loginProvider.notifier).toggle();
                        },
                        child: Text(
                          'haveAccountText'.tr(),
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
