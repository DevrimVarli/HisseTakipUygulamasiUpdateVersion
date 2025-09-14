import 'package:borsa_app/core/utils/get_color.dart';
import 'package:borsa_app/core/utils/get_earning_calculation.dart';
import 'package:borsa_app/core/utils/get_icon.dart';
import 'package:borsa_app/core/utils/get_text_earning.dart';
import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:borsa_app/features/portfolio/data/portfolio_delete_data_repository.dart';
import 'package:borsa_app/features/portfolio/domain/portfolio_add_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortfolioHisseCard extends ConsumerWidget {
  PortfolioHisseCard({
    super.key,
    required this.hisse,
    required this.portfolio,
    required this.docId,
  });
  HisseModel hisse;
  PortfolioAddParams portfolio;
  String docId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    

    return Container(
      height: 230,
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.surface.withValues(alpha: 0.32)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  hisse.name,
                  style: textTheme.headlineMedium?.copyWith(
                    color: colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                getIcon(hisse.rate),
              ],
            ),
            Text(
              '${hisse.price} ${hisse.currency}',
              style: textTheme.headlineSmall?.copyWith(
                color: colorScheme.surface.withValues(alpha: 0.75),
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Değişim ${hisse.rate}%',
                  style: textTheme.titleLarge?.copyWith(
                    color: getColor(hisse.rate),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    ref.read(portfolioDeleteDataProvider(docId));
                  },
                  icon: Icon(Icons.delete, size: 24, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Adet: ${portfolio.adet}',
                  style: textTheme.titleLarge?.copyWith(
                    color: colorScheme.surface.withValues(alpha: 0.75),
                  ),
                ),
                Text(
                  'Maliyet: ${portfolio.maliyet}',
                  style: textTheme.titleLarge?.copyWith(
                    color: colorScheme.surface.withValues(alpha: 0.75),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.1),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: getTextEarning(
                  getEarningCalculation(
                    hisse.price,
                    portfolio.adet,
                    portfolio.maliyet,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
