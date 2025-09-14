// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpHash() => r'34a77d4772aa7b904108e92e6170449bfcadd5c0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [signUp].
@ProviderFor(signUp)
const signUpProvider = SignUpFamily();

/// See also [signUp].
class SignUpFamily extends Family<AsyncValue<void>> {
  /// See also [signUp].
  const SignUpFamily();

  /// See also [signUp].
  SignUpProvider call(SignUpParams params, BuildContext context) {
    return SignUpProvider(params, context);
  }

  @override
  SignUpProvider getProviderOverride(covariant SignUpProvider provider) {
    return call(provider.params, provider.context);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'signUpProvider';
}

/// See also [signUp].
class SignUpProvider extends AutoDisposeFutureProvider<void> {
  /// See also [signUp].
  SignUpProvider(SignUpParams params, BuildContext context)
    : this._internal(
        (ref) => signUp(ref as SignUpRef, params, context),
        from: signUpProvider,
        name: r'signUpProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$signUpHash,
        dependencies: SignUpFamily._dependencies,
        allTransitiveDependencies: SignUpFamily._allTransitiveDependencies,
        params: params,
        context: context,
      );

  SignUpProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
    required this.context,
  }) : super.internal();

  final SignUpParams params;
  final BuildContext context;

  @override
  Override overrideWith(FutureOr<void> Function(SignUpRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: SignUpProvider._internal(
        (ref) => create(ref as SignUpRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SignUpProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignUpProvider &&
        other.params == params &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SignUpRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `params` of this provider.
  SignUpParams get params;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _SignUpProviderElement extends AutoDisposeFutureProviderElement<void>
    with SignUpRef {
  _SignUpProviderElement(super.provider);

  @override
  SignUpParams get params => (origin as SignUpProvider).params;
  @override
  BuildContext get context => (origin as SignUpProvider).context;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
