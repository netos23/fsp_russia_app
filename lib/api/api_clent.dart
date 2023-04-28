import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fsp_russia_app/entity/auth_model.dart';
import 'package:fsp_russia_app/entity/registration_model.dart';
import 'package:fsp_russia_app/entity/tokens_model.dart';
import 'package:retrofit/http.dart';

part 'api_clent.g.dart';


@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('/user/login')
  Future<TokensModel> postAuth({
    @Body() required AuthModel request,
  });

  @POST('/user/registration')
  Future<void> postRegistration({
    @Body() required RegistrationModel request,
  });

}
