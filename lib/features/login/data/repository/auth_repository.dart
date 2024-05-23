import 'package:dartz/dartz.dart';
import 'package:e_bikes/constants/error_strings.dart';
import 'package:e_bikes/core/failures/failures.dart';
import 'package:e_bikes/core/models/response_model.dart';
import 'package:e_bikes/core/network_info/network_info.dart';
import 'package:e_bikes/core/runner/service.dart';
import 'package:e_bikes/features/login/data/provider.dart';
import 'package:e_bikes/features/login/data/source/remote_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LoginRepository {
  // Auth
  Future<Either<Failure, ResponseModel>> loginUser();
}

class LoginRepositoryImpl implements LoginRepository {
  final NetworkInfo _networkInfo;
  final LoginRemoteDataSource _loginRemoteDataSource;

  LoginRepositoryImpl({required Ref ref})
      : _loginRemoteDataSource = ref.read(loginRemoteSourceProvider),
        _networkInfo = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ResponseModel>> loginUser() async {
    ServiceRunner<Failure, ResponseModel> sR = ServiceRunner(_networkInfo);

    return sR.tryRemoteandCatch(
      call: _loginRemoteDataSource.loginUser(),
      errorTitle: ErrorStrings.LOG_IN_ERROR,
    );
  }
}
