import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:borsa_app/features/portfolio/data/portfolio_add_data_repository.dart';
import 'package:borsa_app/features/portfolio/domain/portfolio_add_params.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShowDialog extends ConsumerWidget {
  const ShowDialog({
    required this.dropDownKey,
    required this.hisseAsyncValue,
    required this.maliyetController,
    required this.adetController,
    super.key,
  });
  final GlobalKey<DropdownSearchState<dynamic>> dropDownKey;
  final AsyncValue<List<HisseModel>> hisseAsyncValue;
  final TextEditingController maliyetController;
  final TextEditingController adetController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String selectedHisseName = 'A1CAP';
    return AlertDialog(
      backgroundColor: const Color(0xFF0B1D51),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Row(
            children: <Widget>[
              Icon(Icons.add_chart, color: Colors.white),
              SizedBox(width: 10),
              Text('Hisse Ekle', style: TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 10),
          Container(height: 2, color: Colors.white),
        ],
      ),

      content: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Dropdown (sadece adlar)
            DropdownSearch<String>(
              key: dropDownKey,
              items: (String filter, LoadProps? infiniteScrollProps) =>
                  hisseAsyncValue.value
                      ?.map((HisseModel h) => h.name)
                      .toList() ??
                  <String>[],

              selectedItem: selectedHisseName,
              onChanged: (String? v) {
                if (v != null) selectedHisseName = v;
              },

              // Üstte görünen seçili metin
              dropdownBuilder: (BuildContext context, String? selectedItem) =>
                  Text(
                    selectedItem ?? 'Seçiniz',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

              // Input görünümü
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  labelText: 'Hisse Seçin',
                  labelStyle: const TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w600,
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  hintStyle: const TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.white10,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white24),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.amber,
                      width: 1.2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.trending_up,
                    color: Colors.amber,
                  ),
                  suffixIconColor: Colors.white70,
                ),
              ),

              // Açılan menü
              popupProps: PopupProps.menu(
                fit: FlexFit.loose,
                constraints: const BoxConstraints(maxHeight: 420),
                showSearchBox: true,

                // Arama kutusu
                searchFieldProps: TextFieldProps(
                  decoration: InputDecoration(
                    hintText: 'Hisse ara...',
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blueAccent),
                    ),
                  ),
                ),

                // Popup kabı
                containerBuilder: (BuildContext context, Widget popupWidget) =>
                    Material(
                      elevation: 10,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: popupWidget,
                      ),
                    ),

                // DİKKAT: 4 parametreli imza (context, item, isSelected, isDisabled)
                itemBuilder:
                    (
                      BuildContext context,
                      String item,
                      bool isSelected,
                      bool isDisabled,
                    ) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF10245F)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected
                                ? Colors.amber.shade400
                                : Colors.grey.shade300,
                            width: isSelected ? 1.2 : 0.8,
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.area_chart,
                              size: 18,
                              color: isDisabled
                                  ? Colors.grey.shade400
                                  : (isSelected
                                        ? Colors.amber.shade400
                                        : Colors.grey.shade600),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                item,
                                style: TextStyle(
                                  color: isDisabled
                                      ? Colors.grey
                                      : (isSelected
                                            ? Colors.white
                                            : Colors.black87),
                                  fontWeight: isSelected
                                      ? FontWeight.w700
                                      : FontWeight.w500,
                                  decoration: isDisabled
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),
                            ),
                            if (isSelected)
                              Icon(
                                Icons.check_circle,
                                size: 18,
                                color: Colors.amber.shade400,
                              ),
                          ],
                        ),
                      );
                    },

                scrollbarProps: const ScrollbarProps(
                  thickness: 4,
                  radius: Radius.circular(8),
                  interactive: true,
                ),

                emptyBuilder: (BuildContext context, String search) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Sonuç yok',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Maliyet - Adet
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: maliyetController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Maliyet',
                      labelStyle: const TextStyle(color: Colors.white),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.white, // yukarı çıktığında
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.white54),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 1.5,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextField(
                    controller: adetController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Adet',
                      labelStyle: const TextStyle(color: Colors.white),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.white, // yukarı çıktığında
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.white54),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 1.5,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('İptal', style: TextStyle(color: Colors.white)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            // Portfolio ekleme işlemi
            ref.read(
              portfolioAddDataProvider(
                PortfolioAddParams(
                  name: selectedHisseName,
                  maliyet: int.parse(maliyetController.text),
                  adet: int.parse(adetController.text),
                ),
              ),
            );
            Navigator.of(context).pop();
          },
          child: const Text('Ekle', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
