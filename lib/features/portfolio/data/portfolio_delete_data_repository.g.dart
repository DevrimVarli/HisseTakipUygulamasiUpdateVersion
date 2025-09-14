// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_delete_data_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$portfolioDeleteDataHash() =>
    r'4f36bfe8c3cc1d76d31c8f3c42f190d8c92b1965';

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

/// See also [portfolioDeleteData].
@ProviderFor(portfolioDeleteData)
const portfolioDeleteDataProvider = PortfolioDeleteDataFamily();

/// See also [portfolioDeleteData].
class PortfolioDeleteDataFamily extends Family<AsyncValue<void>> {
  /// See also [portfolioDeleteData].
  const PortfolioDeleteDataFamily();

  /// See also [portfolioDeleteData].
  PortfolioDeleteDataProvider call(String doc_id) {
    return PortfolioDeleteDataProvider(doc_id);
  }

  @override
  PortfolioDeleteDataProvider getProviderOverride(
    covariant PortfolioDeleteDataProvider provider,
  ) {
    return call(provider.doc_id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'portfolioDeleteDataProvider';
}

/// See also [portfolioDeleteData].
class PortfolioDeleteDataProvider extends AutoDisposeFutureProvider<void> {
  /// See also [portfolioDeleteData].
  PortfolioDeleteDataProvider(String doc_id)
    : this._internal(
        (ref) => portfolioDeleteData(ref as PortfolioDeleteDataRef, doc_id),
        from: portfolioDeleteDataProvider,
        name: r'portfolioDeleteDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$portfolioDeleteDataHash,
        dependencies: PortfolioDeleteDataFamily._dependencies,
        allTransitiveDependencies:
            PortfolioDeleteDataFamily._allTransitiveDependencies,
        doc_id: doc_id,
      );

  PortfolioDeleteDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.doc_id,
  }) : super.internal();

  final String doc_id;

  @override
  Override overrideWith(
    FutureOr<void> Function(PortfolioDeleteDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PortfolioDeleteDataProvider._internal(
        (ref) => create(ref as PortfolioDeleteDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        doc_id: doc_id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _PortfolioDeleteDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PortfolioDeleteDataProvider && other.doc_id == doc_id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, doc_id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PortfolioDeleteDataRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `doc_id` of this provider.
  String get doc_id;
}

class _PortfolioDeleteDataProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with PortfolioDeleteDataRef {
  _PortfolioDeleteDataProviderElement(super.provider);

  @override
  String get doc_id => (origin as PortfolioDeleteDataProvider).doc_id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
