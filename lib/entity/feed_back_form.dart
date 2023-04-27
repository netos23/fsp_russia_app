import 'package:freezed_annotation/freezed_annotation.dart';

import 'feed_back_model.dart';

part 'feed_back_form.freezed.dart';

@freezed
class FeedBackForm with _$FeedBackForm {
  factory FeedBackForm.ratingForm({
    required String description,
    required int? Function(FeedBackModel) selector,
    required FeedBackModel Function(double) editCallback,
  }) = Rating;

  factory FeedBackForm.textForm({
    required String description,
    required int length,
    required String? Function(FeedBackModel) selector,
    required FeedBackModel Function(String) editCallback,
  }) = TextForm;
}
