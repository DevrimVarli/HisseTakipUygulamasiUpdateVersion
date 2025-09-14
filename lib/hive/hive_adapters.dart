import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:hive_ce/hive.dart';
@GenerateAdapters(
 firstTypeId: 0,
 <AdapterSpec<dynamic>>[
 AdapterSpec<HisseModel>(),
 ],
)
part 'hive_adapters.g.dart';
