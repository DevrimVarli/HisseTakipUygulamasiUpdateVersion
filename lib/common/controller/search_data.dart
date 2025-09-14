import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_data.g.dart';
@riverpod
 class SearchData extends _$SearchData {
  @override
  String build(){
    return '';
  }
  void update(String value){
    state=value;
  }
  void clear(){
    state='';
  }
   
 }
