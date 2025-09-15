// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signInRepositoryHash() => r'273747e69d95aa637a77f8f2db5dd57031788ed5';

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

/// See also [signInRepository].
@ProviderFor(signInRepository)
const signInRepositoryProvider = SignInRepositoryFamily();

/// See also [signInRepository].
class SignInRepositoryFamily extends Family<AsyncValue<void>> {
  /// See also [signInRepository].
  const SignInRepositoryFamily();

  /// See also [signInRepository].
  SignInRepositoryProvider call(
    String email,
    String password,
    BuildContext context,
  ) {
    return SignInRepositoryProvider(email, password, context);
  }

  @override
  SignInRepositoryProvider getProviderOverride(
    covariant SignInRepositoryProvider provider,
  ) {
    return call(provider.email, provider.password, provider.context);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'signInRepositoryProvider';
}

/// See also [signInRepository].
class SignInRepositoryProvider extends AutoDisposeFutureProvider<void> {
  /// See also [signInRepository].
  SignInRepositoryProvider(String email, String password, BuildContext context)
    : this._internal(
        (ref) => signInRepository(
          ref as SignInRepositoryRef,
          email,
          password,
          context,
        ),
        from: signInRepositoryProvider,
        name: r'signInRepositoryProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$signInRepositoryHash,
        dependencies: SignInRepositoryFamily._dependencies,
        allTransitiveDependencies:
            SignInRepositoryFamily._allTransitiveDependencies,
        email: email,
        password: password,
        context: context,
      );

  SignInRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
    required this.password,
    required this.context,
  }) : super.internal();

  final String email;
  final String password;
  final BuildContext context;

  @override
  Override overrideWith(
    FutureOr<void> Function(SignInRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SignInRepositoryProvider._internal(
        (ref) => create(ref as SignInRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
        password: password,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SignInRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignInRepositoryProvider &&
        other.email == email &&
        other.password == password &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SignInRepositoryRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `password` of this provider.
  String get password;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _SignInRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with SignInRepositoryRef {
  _SignInRepositoryProviderElement(super.provider);

  @override
  String get email => (origin as SignInRepositoryProvider).email;
  @override
  String get password => (origin as SignInRepositoryProvider).password;
  @override
  BuildContext get context => (origin as SignInRepositoryProvider).context;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
