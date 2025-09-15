import 'dart:io';
import 'package:borsa_app/firebase_options.dart';
import 'package:borsa_app/hive/hive_registrar.g.dart';
import 'package:borsa_app/my_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive
    ..init(Directory.current.path)
    ..registerAdapters();

  // Flutter için Hive başlatma
  await Hive.initFlutter();
  await Hive.openBox<String>('favorilerBox');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const <Locale>[Locale('tr'), Locale('en')],
        path: 'assets/translations',
        child: const MyApp(),
      ),
    ),
  );
}
