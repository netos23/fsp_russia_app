import 'package:dio/dio.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/entity/create_team.dart';

import '../../domain/auth_service.dart';

class TeamScreenPresenter {
  final Dio dio;
  late final ApiClient client;
  final auth = AuthService();

  TeamScreenPresenter({required this.dio}) {
    client = ApiClient(dio);

  }

  Future<void> createTeam() async {
    client.createTeam(request: CreateTeam(ownerId: auth.model!.id, name: 'Моя команда'));
    auth.model = await client.getUser(userId: auth.model! xa.id);
  }
}