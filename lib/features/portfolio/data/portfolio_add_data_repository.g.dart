// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_add_data_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$portfolioAddDataHash() => r'f004d00a17d340760c406eda8fd0995083a76264';

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

/// See also [portfolioAddData].
@ProviderFor(portfolioAddData)
const portfolioAddDataProvider = PortfolioAddDataFamily();

/// See also [portfolioAddData].
class PortfolioAddDataFamily extends Family<AsyncValue<void>> {
  /// See also [portfolioAddData].
  const PortfolioAddDataFamily();

  /// See also [portfolioAddData].
  PortfolioAddDataProvider call(PortfolioAddParams params) {
    return PortfolioAddDataProvider(params);
  }

  @override
  PortfolioAddDataProvider getProviderOverride(
    covariant PortfolioAddDataProvider provider,
  ) {
    return call(provider.params);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'portfolioAddDataProvider';
}

/// See also [portfolioAddData].
class PortfolioAddDataProvider extends AutoDisposeFutureProvider<void> {
  /// See also [portfolioAddData].
  PortfolioAddDataProvider(PortfolioAddParams params)
    : this._internal(
        (ref) => portfolioAddData(ref as PortfolioAddDataRef, params),
        from: portfolioAddDataProvider,
        name: r'portfolioAddDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$portfolioAddDataHash,
        dependencies: PortfolioAddDataFamily._dependencies,
        allTransitiveDependencies:
            PortfolioAddDataFamily._allTransitiveDependencies,
        params: params,
      );

  PortfolioAddDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final PortfolioAddParams params;

  @override
  Override overrideWith(
    FutureOr<void> Function(PortfolioAddDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PortfolioAddDataProvider._internal(
        (ref) => create(ref as PortfolioAddDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _PortfolioAddDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PortfolioAddDataProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PortfolioAddDataRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `params` of this provider.
  PortfolioAddParams get params;
}

class _PortfolioAddDataProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with PortfolioAddDataRef {
  _PortfolioAddDataProviderElement(super.provider);

  @override
  PortfolioAddParams get params => (origin as PortfolioAddDataProvider).params;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
