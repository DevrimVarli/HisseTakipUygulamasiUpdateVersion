import 'package:borsa_app/features/home_page/domain/hisse_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hisse.repository.g.dart';
@riverpod
Future<List<HisseModel>> hisseRepository(Ref ref) async {
  Dio dio = Dio();
  Response<dynamic> response = await dio.get(
    'https://api.collectapi.com/economy/liveBorsa',
    options: Options(
      headers: <String, dynamic>{
        'authorization': 'apikey 1Sw4JcisdGGo0sILujwSee:1hweRKmCJuZVcpleyDLluR',
        'content-type': 'application/json'
      },
    ),
  );

  if (response.statusCode == 200) {
    Map<String, dynamic> data = response.data as Map<String, dynamic>;   // önce Map'e cast et
    List<dynamic> result = data['result'] as List<dynamic>;                  // sonra listeyi al
    return result.map((e) => HisseModel.fromJson(e as Map<String,dynamic>)).toList();
  } else {
    throw Exception("API'den veri alınamadı: ${response.statusCode}");
  }
}
