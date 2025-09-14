import 'package:borsa_app/common/app_bar.dart';
import 'package:borsa_app/core/utils/get_earning_calculation.dart';
import 'package:borsa_app/core/utils/get_text_earning.dart';
import 'package:borsa_app/features/home_page/data/hisse.repository.dart';
import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:borsa_app/features/portfolio/data/portfolio_get_data_repository.dart';
import 'package:borsa_app/features/portfolio/domain/portfolio_add_params.dart';
import 'package:borsa_app/features/portfolio/presentation/widgets/portfolio_hisse_card.dart';
import 'package:borsa_app/features/portfolio/presentation/widgets/show_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortfolioScreen extends ConsumerStatefulWidget {
  const PortfolioScreen({super.key});

  @override
  ConsumerState<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends ConsumerState<PortfolioScreen> {
  final GlobalKey<DropdownSearchState<dynamic>> dropDownKey =
      GlobalKey<DropdownSearchState<dynamic>>();
  final TextEditingController maliyetController = TextEditingController();
  final TextEditingController adetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AsyncValue<List<HisseModel>> hisseAsyncValue = ref.watch(
      hisseRepositoryProvider,
    );
    AsyncValue<QuerySnapshot<Map<String, dynamic>>> userPortfolioAsync = ref
        .watch(getUserStocksStreamProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0B1D51),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CommonAppBar(title: 'Portfolio'),
      ),
      body: userPortfolioAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object e, _) => Center(child: Text('Hata: $e')),
        data: (QuerySnapshot<Map<String, dynamic>> snap) {
          double toplamKazanc = 0;
          double toplamTutar = 0;
          double toplamYatirim = 0;
          if (snap.docs.isEmpty) {
            return const Center(child: Text('Henüz Hisse Yok'));
          }
          if (hisseAsyncValue.value == null) {
            return Center(
              child: SizedBox(
                height: 300,
                child: Text(
                  'Yükleniyor...',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }
          for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snap.docs) {
            Map<String, dynamic> d = doc.data();
            String ad = (d['name'] ?? '-') as String;
            String adetStr = d['adet']?.toString() ?? '0';
            String maliyetStr = d['maliyet']?.toString() ?? '0';

            HisseModel hisse = hisseAsyncValue.value!.firstWhere(
              (HisseModel e) => e.name == ad,
            );

            int adet = int.tryParse(adetStr) ?? 0;
            int maliyet = int.tryParse(maliyetStr) ?? 0;

            toplamTutar += hisse.price * adet;
            toplamKazanc += getEarningCalculation(hisse.price, adet, maliyet);
          }
          toplamYatirim = toplamTutar - toplamKazanc;

          return Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: snap.docs.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (BuildContext context, int i) {
                    QueryDocumentSnapshot<Map<String, dynamic>> doc =
                        snap.docs[i];
                    Map<String, dynamic> d = doc.data(); // Map<String, dynamic>

                    String ad = (d['name'] ?? '-') as String;
                    String adet = d['adet']?.toString() ?? '-';
                    String maliyet = d['maliyet']?.toString() ?? '-';
                    HisseModel hisse = hisseAsyncValue.value!.firstWhere(
                      (HisseModel element) => element.name == ad,
                    );

                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: PortfolioHisseCard(
                        hisse: hisse,
                        portfolio: PortfolioAddParams(
                          name: ad,
                          maliyet: int.parse(maliyet),
                          adet: int.parse(adet),
                        ),
                        docId: doc.id,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: SafeArea(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 1.25,
                    margin: const EdgeInsets.only(bottom: 2),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha:  0.07),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Toplam Yatırım:${toplamYatirim.toStringAsFixed(2)} TRY',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'Güncel Değer: ${toplamTutar.toStringAsFixed(2)} TRY',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        getTextEarning(toplamKazanc),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<AlertDialog>(
            context: context,
            builder: (BuildContext context) {
              return ShowDialog(
                dropDownKey: dropDownKey,
                hisseAsyncValue: hisseAsyncValue,
                maliyetController: maliyetController,
                adetController: adetController,
              );
            },
          );
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
