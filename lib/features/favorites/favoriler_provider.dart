import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'favoriler_provider.g.dart';

@riverpod
Box<String> favorilerListenable(Ref ref) {
  return Hive.box<String>('favorilerBox');
}
