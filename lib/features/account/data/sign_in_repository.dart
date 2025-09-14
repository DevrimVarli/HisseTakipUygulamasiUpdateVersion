import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sign_in_repository.g.dart';
@riverpod
Future<void> signInRepository(Ref ref,String email, String password, BuildContext context) async {
   await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
  

}
