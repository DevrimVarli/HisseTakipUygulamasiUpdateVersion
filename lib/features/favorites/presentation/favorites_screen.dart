import 'package:borsa_app/common/app_bar.dart';
import 'package:borsa_app/features/home_page/data/hisse.repository.dart';
import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:borsa_app/features/home_page/presentation/widgets/hisse_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<HisseModel>> tumHisselerAsyncValue = ref.watch(
      hisseRepositoryProvider,
    );
    Box<String> box = Hive.box<String>('favorilerBox');
    return Scaffold(
      backgroundColor: const Color(0xFF0B1D51),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CommonAppBar(title: 'Favorites', leadingIsActive: false),
      ),
      body: ValueListenableBuilder<Box<String>>(
        valueListenable: box.listenable(),
        builder: (BuildContext context, Box<String> box, _) {
          List<String> favoriteList = box.values.toList();
          if (favoriteList.isEmpty) {
            return Center(child: Text('Henüz favori eklenmedi'));
          }
          List<HisseModel> favoriteHisse = tumHisselerAsyncValue.value!
              .where(
                (HisseModel hisse) => favoriteList.contains(hisse.name),
              ) // favoride olanları filtrele
              .toList();

          return ListView.builder(
            itemCount: favoriteHisse.length,
            itemBuilder: (BuildContext context, int indeks) {
              HisseModel hisse = favoriteHisse[indeks];
              return Padding(
                padding: const EdgeInsets.all(8),
                child: HisseCard(hisse: hisse),
              );
            },
          );
        },
      ),
    );
  }
}
