import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'portfolio_delete_data_repository.g.dart';
@riverpod
Future<void> portfolioDeleteData(Ref ref, String docId) async {
  await FirebaseFirestore.instance
      .collection('Portfolio')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('Hisseler')
      .doc(docId)
      .delete();
}
