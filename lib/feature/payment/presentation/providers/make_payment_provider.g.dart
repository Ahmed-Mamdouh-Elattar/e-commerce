// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_payment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MakePayment)
final makePaymentProvider = MakePaymentProvider._();

final class MakePaymentProvider
    extends $AsyncNotifierProvider<MakePayment, void> {
  MakePaymentProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'makePaymentProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$makePaymentHash();

  @$internal
  @override
  MakePayment create() => MakePayment();
}

String _$makePaymentHash() => r'6f77ba9826de63e251762d44070d67e6b7ae8f21';

abstract class _$MakePayment extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
