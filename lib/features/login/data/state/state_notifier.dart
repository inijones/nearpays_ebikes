import 'package:e_bikes/features/login/data/provider.dart';
import 'package:e_bikes/features/login/data/repository/auth_repository.dart';
import 'package:e_bikes/features/login/data/state/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginUserStateNotifier extends StateNotifier<LoginUserState> {
  final LoginRepository loginRepository;

  LoginUserStateNotifier(Ref ref)
      : loginRepository = ref.read(loginRepositoryProvider),
        super(LoginUserInitial());

  Future<void> loginUser() async {
    state = LoginUserLoadingState();
    final responseOrFailure = await loginRepository.loginUser();
    responseOrFailure.fold(
      (l) => state = LoginUserFailureState(l),
      (r) => state = LoginUserSuccessState(r),
    );
  }
}
