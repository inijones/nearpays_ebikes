import 'package:e_bikes/core/failures/failures.dart';
import 'package:e_bikes/core/models/response_model.dart';

class LoginUserState {}

class LoginUserInitial extends LoginUserState {}

class LoginUserLoadingState extends LoginUserState {}

class LoginUserFailureState extends LoginUserState {
  final Failure failure;

  LoginUserFailureState(this.failure);
}

class LoginUserSuccessState extends LoginUserState {
  final ResponseModel responseModel;

  LoginUserSuccessState(this.responseModel);
}