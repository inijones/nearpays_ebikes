// implement the AUTh abstarct class, so all future in it is added

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:e_bikes/core/models/response_model.dart';
import 'package:e_bikes/core/network_request/network_request.dart';
import 'package:e_bikes/core/network_retry/network_retry.dart';

abstract class LoginRemoteDataSource {
  // Auth
  Future<ResponseModel> loginUser();
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  // call the two classes needed, the network request for post,get etc
  final NetworkRequest networkRequest;
  // call the two classes needed, the network retry for retrying failed API call
  final NetworkRetry networkRetry;

//  constructor to to add that the two is requried in the class
  LoginRemoteDataSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // Auth Remote Source called from the abstract class, first is to setup the abstract class

  // Auth, Pin and Code APIs

  //
  @override
  Future<ResponseModel> loginUser() async {
    String url =
        "https://73718434ea0f4fd794140cb433f893e2.api.mockbin.io/"; //url
    log(url);

    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      ),
    );

    final data = await json.decode(response.body);

    log(response.statusCode.toString());

    log(response.body);

    if (response.statusCode == 200) {
      try {
        final ResponseModel responseModel = ResponseModel.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else if (response.statusCode == 422) {
      final message = data["message"];
      throw Exception(message);
    } else {
      throw Exception("Error occurred try again later.");
    }
  }
}
