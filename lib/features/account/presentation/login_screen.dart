import 'package:borsa_app/features/account/controller.dart';
import 'package:borsa_app/features/account/presentation/sign_in_screen.dart';
import 'package:borsa_app/features/account/presentation/sign_up_screen.dart';
import 'package:borsa_app/features/profile/presentation/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLogin = ref.watch(loginProvider);
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return const ProfileScreen(); // giriş yapmış
        }
        return isLogin ? const SignUpScreen() : const SignInScreen();
      },
    );
  }
}
