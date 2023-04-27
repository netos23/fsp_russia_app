import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_back_model.freezed.dart';

@freezed
class FeedBackModel with _$FeedBackModel {
    factory FeedBackModel({
      int? common,
      int? dificalty,
      int? interess,
      int? qualityOrg,
      int? qualityTech,
      String? positive,
      String? negative,
      String? comment,
}) = _FeedBackModel;
}