import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:fsp_russia_app/entity/feed_back_form.dart';
import 'package:fsp_russia_app/entity/feed_back_model.dart';

class FeedBackPresenter {
  final PageController controller = PageController();
  late final forms = [
    FeedBackForm.ratingForm(
      description: 'Какую бы общую оценку Вы бы поставили мероприяятию?',
      selector: (f) => f.common,
      editCallback: (v) => feedBack.value.copyWith(
        common: v.floor(),
      ),
    ),
    FeedBackForm.ratingForm(
      description: 'Насколько сложными вам показались задания?',
      selector: (f) => f.dificalty,
      editCallback: (v) => feedBack.value.copyWith(
        dificalty: v.floor(),
      ),
    ),
    FeedBackForm.ratingForm(
      description: 'Насколько интересными вам показались задачи?',
      selector: (f) => f.interess,
      editCallback: (v) => feedBack.value.copyWith(
        interess: v.floor(),
      ),
    ),
    FeedBackForm.ratingForm(
      description: 'Оцените уровень организации и волонтеров?',
      selector: (f) => f.qualityOrg,
      editCallback: (v) => feedBack.value.copyWith(
        qualityOrg: v.floor(),
      ),
    ),
    FeedBackForm.ratingForm(
      description: 'Оцените уровень технического оборудования',
      selector: (f) => f.qualityTech,
      editCallback: (v) => feedBack.value.copyWith(
        qualityTech: v.floor(),
      ),
    ),
    FeedBackForm.textForm(
      description: 'Какие положительные моменты, '
          'Вы можете отметить в соревновании?',
      length: 250,
      selector: (f) => f.positive,
      editCallback: (v) => feedBack.value.copyWith(
        positive: v,
      ),
    ),
    FeedBackForm.textForm(
      description: 'Какие отрицательные моменты, '
          'Вы можете отметить в соревновании?',
      length: 250,
      selector: (f) => f.negative,
      editCallback: (v) => feedBack.value.copyWith(
        negative: v,
      ),
    ),
    FeedBackForm.textForm(
      description: 'Расскажите о ваших впечатлениях.',
      length: 250,
      selector: (f) => f.comment,
      editCallback: (v) => feedBack.value.copyWith(
        comment: v,
      ),
    ),
  ];
  final ValueNotifier<FeedBackModel> feedBack = ValueNotifier(
    FeedBackModel(),
  );

  final StackRouter router;

  FeedBackPresenter({
    required this.router,
  });

  void init() {}

  void dispose() {
    controller.dispose();
  }

  VoidCallback? getSubmitCallback() {
    final page = controller.page ?? 0;

    if (page.round() != forms.length - 1) {
      return () => controller.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
    }
    return null;
  }

  String getCallbackText() {
    final page = controller.page ?? 0;
    if (page.round() != forms.length - 1) {
      return 'Далее';
    }

    return 'Отправить';
  }
}
