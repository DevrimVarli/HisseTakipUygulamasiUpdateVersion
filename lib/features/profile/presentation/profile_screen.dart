import 'package:borsa_app/common/app_bar.dart';
import 'package:borsa_app/features/portfolio/presentation/portfolio_screen.dart';
import 'package:borsa_app/features/profile/data/profile_data_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  final User user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    AsyncValue<DocumentSnapshot<Map<String, dynamic>>> userDataStream = ref
        .watch(getUserDataProvider);
    return Scaffold(
      backgroundColor: const Color(0xFF0B1D51),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CommonAppBar(title: 'profile'.tr(), actionIsActive: true),
      ),
      body: userDataStream.when(
        data: (DocumentSnapshot<Map<String, dynamic>> snapshot) {
          if (!snapshot.exists) {
            return const Center(child: Text('Kullanıcı verisi yok'));
          }
          Map<String, dynamic> data = snapshot.data() ?? <String, dynamic>{};
          return Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  spacing: 15,
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF0B1D51),
                      ),
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                    Text(
                      'welcome'.tr(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${data["firstName"].toString().toUpperCase()} ${data["lastName"].toString().toUpperCase()}",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Icon(
                          Icons.monetization_on,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<Widget>(
                                builder: (BuildContext context) =>
                                    const PortfolioScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'myPortfolio'.tr(),
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(flex: 4),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Icon(Icons.email, color: Colors.black, size: 24),
                        SizedBox(width: 8),

                        Text(
                          '${user.email}',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(height: 4),
                        Text(
                          user.email ?? 'No email',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Spacer(flex: 3),
                      ],
                    ),
                    Row(
                      children: [
                        Spacer(flex: 1),
                        Text(
                          'selectLanguage'.tr(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (context.locale.languageCode == 'tr')
                          TextButton.icon(
                            onPressed: () {
                              context.setLocale(
                                const Locale('en'),
                              ); //burda dili değiştiriyoruz
                            },
                            icon: const Icon(
                              Icons.language,
                              color: Color(0xFF0B1D51),
                            ),
                            label: const Text(
                              'TR',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0B1D51),
                              ),
                            ),
                          )
                        else
                          TextButton.icon(
                            onPressed: () {
                              context.setLocale(
                                const Locale('tr'),
                              ); //burda dili değiştiriyoruz
                            },
                            icon: const Icon(
                              Icons.language,
                              color: Color(0xFF0B1D51),
                            ),
                            label: const Text(
                              'EN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0B1D51),
                              ),
                            ),
                          ),
                        Spacer(flex: 3),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        error: (Object error, StackTrace stack) => Center(
          child: Text(
            'Error: $error',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
