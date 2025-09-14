import 'package:borsa_app/common/controller/search_data.dart';
import 'package:borsa_app/common/controller/search_is_active.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonAppBar extends ConsumerStatefulWidget {
  CommonAppBar({
    required this.title,
    super.key,
    this.leadingIsActive,
    this.actionIsActive,
    this.searchIsActive,
  });
  String title;
  bool? leadingIsActive;
  bool? actionIsActive;
  bool? searchIsActive;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends ConsumerState<CommonAppBar> {
  TextEditingController tfcSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool searchActive = ref.watch(searchIsActiveProvider);
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return AppBar(
      title: searchActive
          ? TextField(
              controller: tfcSearch,
              style: TextStyle(color: Colors.white),
              onChanged: (String value) {
                ref.read(searchDataProvider.notifier).state = value;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: 'Hisse adını giriniz',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
            )
          : Text(
              widget.title,
              style: textTheme.titleLarge?.copyWith(
                color: colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
            ),
      leading: widget.leadingIsActive ?? true
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
            )
          : null,
      actions: <Widget>[
        if (widget.actionIsActive ?? false)
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.exit_to_app, color: Colors.white),
          ),
        if (widget.searchIsActive ?? false)
          if (searchActive)
            IconButton(
              onPressed: () {
                ref.read(searchDataProvider.notifier).clear();
                ref.read(searchIsActiveProvider.notifier).toggle();
              },
              icon: Icon(Icons.cancel, color: Colors.white),
            )
          else
            IconButton(
              onPressed: () {
                ref.read(searchIsActiveProvider.notifier).toggle();
              },
              icon: Icon(Icons.search, color: Colors.white),
            ),
      ],
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFF0B1D51), Color(0xFF122F6D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
