import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_out_repository.g.dart';
@riverpod
Future<void> signOutRepository (Ref ref) async{
  await FirebaseAuth.instance.signOut();   
}
