import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'controller.g.dart';
@riverpod
class Login extends _$Login {
  @override
  bool build() {
    return false;
  }

  void setLogin(bool value) {
    state = value;
  }

  void toggle() {
    state = !state;
  }
}
