// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_delete_data_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$portfolioDeleteDataHash() =>
    r'9922f0cbf0c8c6106697887b5d78113197ebdd05';

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
  PortfolioDeleteDataProvider call(String docId) {
    return PortfolioDeleteDataProvider(docId);
  }

  @override
  PortfolioDeleteDataProvider getProviderOverride(
    covariant PortfolioDeleteDataProvider provider,
  ) {
    return call(provider.docId);
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
  PortfolioDeleteDataProvider(String docId)
    : this._internal(
        (ref) => portfolioDeleteData(ref as PortfolioDeleteDataRef, docId),
        from: portfolioDeleteDataProvider,
        name: r'portfolioDeleteDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$portfolioDeleteDataHash,
        dependencies: PortfolioDeleteDataFamily._dependencies,
        allTransitiveDependencies:
            PortfolioDeleteDataFamily._allTransitiveDependencies,
        docId: docId,
      );

  PortfolioDeleteDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.docId,
  }) : super.internal();

  final String docId;

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
        docId: docId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _PortfolioDeleteDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PortfolioDeleteDataProvider && other.docId == docId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, docId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PortfolioDeleteDataRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `docId` of this provider.
  String get docId;
}

class _PortfolioDeleteDataProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with PortfolioDeleteDataRef {
  _PortfolioDeleteDataProviderElement(super.provider);

  @override
  String get docId => (origin as PortfolioDeleteDataProvider).docId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
