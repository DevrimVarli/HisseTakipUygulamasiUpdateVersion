import 'package:animate_do/animate_do.dart';
import 'package:borsa_app/common/app_bar.dart';
import 'package:borsa_app/common/controller/search_data.dart';
import 'package:borsa_app/features/home_page/data/hisse.repository.dart';
import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:borsa_app/features/home_page/presentation/widgets/hisse_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageScreen extends ConsumerWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String searchData = ref.watch(searchDataProvider).trim().toLowerCase();
    AsyncValue<List<HisseModel>> hisseAsyncValue = ref.watch(hisseRepositoryProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0B1D51),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CommonAppBar(
          title: 'Hisseler',
          leadingIsActive: false,
          searchIsActive: true,
        ),
      ),
      body: hisseAsyncValue.when(
        data: (List<HisseModel> hisseList) {
          // Arama boş değilse filtrele, yoksa tüm listeyi kullan
          List<HisseModel> displayList = (searchData.isNotEmpty)
              ? hisseList
                    .where(
                      (HisseModel h) =>
                          h.name.toLowerCase().contains(searchData),
                    )
                    .toList()
              : hisseList;

          if (displayList.isEmpty) {
            return const Center(
              child: Text('Aradığın kriterde hisse bulunamadı'),
            );
          }

          return ListView.builder(
            itemCount: displayList.length,
            itemBuilder: (BuildContext context, int index) {
              HisseModel hisse = displayList[index];
              return Padding(
                padding: const EdgeInsets.all(8),
                child: FadeInUp(
                  duration: Duration(milliseconds: 300 + index * 50),
                  child: HisseCard(hisse: hisse),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object err, StackTrace stack) => Center(child: Text('Hata: $err')),
      ),
    );
  }
}
