import 'package:borsa_app/core/utils/get_color.dart';
import 'package:borsa_app/core/utils/get_favorites_icon.dart';
import 'package:borsa_app/core/utils/get_icon.dart';
import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HisseCard extends StatelessWidget {
  HisseCard({super.key, required this.hisse});
  HisseModel hisse;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    Box<String> box = Hive.box<String>('favorilerBox');

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
                IconButton(
                  onPressed: () {
                    if (box.values.contains(hisse.name)) {
                      box.delete(hisse.name);
                    } else {
                      box.put(hisse.name, hisse.name);
                    }
                  },
                  icon: ValueListenableBuilder<Box<String>>(
                    valueListenable: box.listenable(),
                    builder: (BuildContext context, Box<String> box, _) {
                      bool isFavorite = box.values.contains(hisse.name);
                      return getFavoritesIcon(isFavorite);
                    },
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
            Text(
              '${'change'.tr()} ${hisse.rate}%',
              style: textTheme.titleLarge?.copyWith(
                color: getColor(hisse.rate),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${'volumeLot'.tr()}: ${hisse.hacimlot}',
                  style: textTheme.titleSmall?.copyWith(
                    color: colorScheme.surface.withValues(alpha: 0.75),
                  ),
                ),
                Text(
                  '${'volumeTRY'.tr()}: ${hisse.hacimtl}',
                  style: textTheme.titleSmall?.copyWith(
                    color: colorScheme.surface.withValues(alpha: 0.75),
                  ),
                ),
              ],
            ),
            Text(
              '${'time'.tr()}: ${hisse.time}',
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
