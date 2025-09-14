// sign_up_repository.dart
import 'package:borsa_app/features/account/domain/sign_up_params.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_repository.g.dart';



@riverpod
Future<void> signUp(Ref ref, SignUpParams params, BuildContext context) async {
  // Basit validasyon (UI’da da yapabilirsin)
  if (params.email.isEmpty || params.password.isEmpty) {
    throw Exception('E-posta ve şifre boş olamaz.');
  }
  if (params.password.length < 6) {
    throw Exception('Şifre en az 6 karakter olmalıdır.');
  }

  // Firebase Auth: kullanıcı oluştur
  UserCredential cred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: params.email,
    password: params.password,
  );

  String? uid = cred.user?.uid;
  if (uid == null) {
    throw Exception('Kullanıcı kimliği alınamadı.');
  }

  // Firestore: profil bilgilerini yaz
  await FirebaseFirestore.instance
      .collection('Kullanicilar1')
      .doc(uid)
      .set(<String, dynamic>{
    'email': params.email,
    'firstName': params.firstName,
    'lastName': params.lastName,
    'phoneNumber': params.phoneNumber,
    'createdAt': FieldValue.serverTimestamp(),
  });
  
}
