import 'package:borsa_app/features/portfolio/domain/portfolio_add_params.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'portfolio_add_data_repository.g.dart';
@riverpod
Future<void> portfolioAddData(Ref ref, PortfolioAddParams params) async {
  await FirebaseFirestore.instance
      .collection('Portfolio')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('Hisseler')
      .doc(DateTime.now().toIso8601String())
      .set(<String, dynamic>{
    'name': params.name,
    'maliyet': params.maliyet,
    'adet': params.adet,
      });
}
