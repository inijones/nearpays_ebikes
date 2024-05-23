import 'package:e_bikes/core/network_request/network_request.dart';
import 'package:e_bikes/core/network_retry/network_retry.dart';
import 'package:e_bikes/features/login/data/repository/auth_repository.dart';
import 'package:e_bikes/features/login/data/source/remote_source.dart';
import 'package:e_bikes/features/login/data/state/state.dart';
import 'package:e_bikes/features/login/data/state/state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRemoteSourceProvider = Provider<LoginRemoteDataSource>(
  (ref) => LoginRemoteDataSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

final loginRepositoryProvider = Provider<LoginRepository>(
  (ref) => LoginRepositoryImpl(ref: ref),
);


final loginUserNotifierProvider =
    StateNotifierProvider<LoginUserStateNotifier, LoginUserState>(
  (ref) => LoginUserStateNotifier(ref),
);