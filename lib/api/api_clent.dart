import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fsp_russia_app/entity/auth_model.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:fsp_russia_app/entity/invite_teammate.dart';
import 'package:fsp_russia_app/entity/registration_model.dart';
import 'package:fsp_russia_app/entity/tokens_model.dart';
import 'package:fsp_russia_app/entity/user_edit_model.dart';
import 'package:fsp_russia_app/entity/user_model.dart';
import 'package:retrofit/http.dart';

import '../entity/accept_invite.dart';
import '../entity/create_team.dart';
import '../entity/invite.dart';

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

  @GET('/user/{user_id}')
  Future<UserModel> getUser({
    @Path('user_id') required int userId,
  });

  @PUT('/user/{user_id}')
  Future<UserModel> putUser({
    @Path('user_id') required int userId,
    @Body() required UserEditModel request,
  });

  @GET('/contest/')
  Future<List<ContestModel>> getContests({
    @Query('city') String? city,
    @Query('format') int? format,
    @Query('datetime_start') String? datetimeStart,
    @Query('datetime_end') String? datetimeEnd,
    @Query('feeding') bool? feeding,
    @Query('type') int? type,
    @Query('difficulty') int? difficulty,
  });

  @PUT('/contest/{contest_id}')
  Future<ContestModel> putContests({
    @Path('contest_id') required int id,
    @Body() required ContestModel request,
  });

  @DELETE('/contest/{contest_id}')
  Future<void> deleteContest({
    @Path('contest_id') required int id,
  });

  @DELETE('/contest/{contest_id}')
  Future<ContestModel> getContest({
    @Path('contest_id') required int id,
  });

  @POST('/contest/')
  Future<ContestModel> postContest({
    @Body() required ContestModel request,
  });


  @POST('/team/')
  Future<void> createTeam({
    @Body() required CreateTeam request,
  });

  @POST('/team/accept_invite')
  Future<void> acceptInvite({
    @Body() required AcceptInvite request,
  });

  @GET('/team/invite')
  Future<Invite> invite();

  @POST('/team/invite')
  Future<void> inviteTeammate({
    @Body() required InviteTeammate request,
  });
}
