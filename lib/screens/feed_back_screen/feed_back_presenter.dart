import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:fsp_russia_app/entity/feed_back_form.dart';

class FeedBackPresenter {
  final forms = [
    FeedBackForm.ratingForm(
      description: 'Какую бы общую оценку Вы бы поставили мероприяятию?',
      selector: (f) => f.common,
    ),
    FeedBackForm.ratingForm(
      description: 'Насколько сложными вам показались задания?',
      selector: (f) => f.dificalty,
    ),
    FeedBackForm.ratingForm(
      description: 'Насколько интересными вам показались задачи?',
      selector: (f) => f.interess,
    ),
    FeedBackForm.ratingForm(
      description: 'Оцените уровень организации и волонтеров?',
      selector: (f) => f.qualityOrg,
    ),
    FeedBackForm.ratingForm(
      description: 'Оцените уровень технического оборудования',
      selector: (f) => f.qualityTech,
    ),
    FeedBackForm.textForm(
      description: 'Какие положительные моменты, '
          'Вы можете отметить в соревновании?',
      length: 250,
      selector: (f) => f.positive,
    ),
    FeedBackForm.textForm(
      description: 'Какие отрицательные моменты, '
          'Вы можете отметить в соревновании?',
      length: 250,
      selector: (f) => f.negative,
    ),
    FeedBackForm.textForm(
      description: 'Расскажите о ваших впечатлениях.',
      length: 250,
      selector: (f) => f.comment,
    ),
  ];
  final StackRouter router;

  FeedBackPresenter({
    required this.router,
  });

  void init() {}

  void dispose() {}

  VoidCallback? getSubmitCallback() {

  }
}
