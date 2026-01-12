import 'package:e_commerce/feature/authentication/domain/usecases/auth_state_change_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final authStateChangeProvider = StreamProvider.autoDispose<AuthState>((
  ref,
) async* {
  final authStateChangeUseCase = ref.read(authStateChangeUseCaseProvider);
  await for (final authState in authStateChangeUseCase.call()) {
    yield authState;
  }
});
