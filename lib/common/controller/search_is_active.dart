import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_is_active.g.dart';
@riverpod
class SearchIsActive extends _$SearchIsActive {
  @override
  bool build(){
    return false;
  }
  void toggle() {
    state = !state;
  }

}
