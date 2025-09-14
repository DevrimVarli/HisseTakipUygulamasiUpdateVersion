

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'portfolio_get_data_repository.g.dart';

@riverpod
Stream<QuerySnapshot<Map<String, dynamic>>> getUserStocksStream(Ref ref) {
  User? user = FirebaseAuth.instance.currentUser;
  if (user == null) return const Stream.empty();
  return FirebaseFirestore.instance
      .collection('Portfolio')
      .doc(user.uid)
      .collection('Hisseler')
      .snapshots();   // QuerySnapshot döner
}
