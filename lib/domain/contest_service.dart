import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fsp_russia_app/api/api_clent.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:fsp_russia_app/internal/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContestService extends ChangeNotifier {
  static final ContestService _instance = ContestService._internal();

  factory ContestService() => _instance;

  ContestService._internal();

  List<ContestModel>? _contests;
  Set<ContestModel> favourites = {};

  Future<List<ContestModel>> getContestsModels(
    ApiClient apiClient,
    ScaffoldMessengerState messengerState, {
    String? city,
    int? format,
    String? datetimeStart,
    String? datetimeEnd,
    bool? feeding,
    int? type,
    int? difficulty,
  }) async {
    var contests = _contests;
    if (contests != null &&
        city == null &&
        format == null &&
        datetimeStart == null &&
        datetimeEnd == null &&
        feeding == null &&
        type == null &&
        type == null &&
        difficulty == null) {
      return contests;
    }

    try {
      final contests = (await apiClient.getContests(
              city: city,
              feeding: feeding,
              format: format,
              datetimeEnd: datetimeEnd,
              datetimeStart: datetimeStart,
              type: type,
              difficulty: difficulty))
          .map(
            (e) => e.copyWith(
              begin: DateTime.parse(e.datetimeStart),
              end: DateTime.parse(e.datetimeEnd),
            ),
          )
          .toList();
      _contests = contests;
      return contests;
    } catch (e, stack) {
      logger.e('Ошибка авторизации', e, stack);
      messengerState.showSnackBar(
        const SnackBar(
          content: Text(
            'Неудалось получить данные соревнований. Попробуйте позже',
          ),
        ),
      );
      return await Future.delayed(const Duration(seconds: 30), () async {
        final contests = (await apiClient.getContests(
                city: city,
                feeding: feeding,
                format: format,
                datetimeEnd: datetimeEnd,
                datetimeStart: datetimeStart,
                type: type,
                difficulty: difficulty))
            .map(
              (e) => e.copyWith(
                begin: DateTime.parse(e.datetimeStart),
                end: DateTime.parse(e.datetimeEnd),
              ),
            )
            .toList();
        _contests = contests;
        return contests;
      });
    }
  }

  Future<void> init() async {
    var instance = await SharedPreferences.getInstance();
    List<dynamic> decode = jsonDecode(instance.getString('fav') ?? '[]');

    favourites.addAll(decode
        .map<ContestModel>((v) => ContestModel.fromJson(v))
        .map(
          (e) => e.copyWith(
            begin: DateTime.parse(e.datetimeStart),
            end: DateTime.parse(e.datetimeEnd),
          ),
        )
        .toList());
  }

  void notifyFavourites() {
    notifyListeners();
    SharedPreferences.getInstance().then((value) async {
      value.setString('fav', jsonEncode(List.of(favourites)));
    });
  }
}
