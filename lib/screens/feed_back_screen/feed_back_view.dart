import 'package:flutter/material.dart';
import 'package:fsp_russia_app/entity/feed_back_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import 'feed_back_presenter.dart';

class FeedBackView extends StatelessWidget {
  const FeedBackView({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<FeedBackPresenter>();
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _MainRatingPage(),
            ),
          ),
          Expanded(
            child: Center(
              child: AnimatedBuilder(
                animation: presenter.controller,
                builder: (context, _) {
                  return OutlinedButton(
                    onPressed: presenter.getSubmitCallback(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        presenter.getCallbackText(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: _PaginationDots(
              pageController: presenter.controller,
              length: presenter.forms.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _MainRatingPage extends StatelessWidget {
  const _MainRatingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<FeedBackPresenter>();
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return ValueListenableBuilder(
      valueListenable: presenter.feedBack,
      builder: (context, value, _) {
        return PageView.builder(
          controller: presenter.controller,
          itemCount: presenter.forms.length,
          itemBuilder: (context, index) {
            final form = presenter.forms[index];
            return Column(
              children: [
                Expanded(
                  child: Text(
                    form.description,
                    style: textTheme.headlineLarge?.copyWith(
                      color: colorTheme.onBackground,
                    ),
                  ),
                ),
                Expanded(
                  child: form.when<Widget>(
                    ratingForm: (_, selector, save) {
                      return Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 100,
                          child: RatingStars(
                            value: selector(value)?.toDouble() ?? 0,
                            onValueChanged: (v) {
                              presenter.getSubmitCallback()?.call();
                              return presenter.feedBack.value = save(v);
                            },
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 30,
                            ),
                            starCount: 10,
                            starSize: 30,
                            valueLabelColor: colorTheme.primary,
                            valueLabelTextStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0),
                            valueLabelRadius: 10,
                            maxValue: 10,
                            starSpacing: 2,
                            maxValueVisibility: false,
                            valueLabelVisibility: false,
                            animationDuration: Duration(
                              milliseconds: 1000,
                            ),
                            valueLabelPadding: const EdgeInsets.symmetric(
                              vertical: 1,
                              horizontal: 8,
                            ),
                            valueLabelMargin: const EdgeInsets.only(
                              right: 8,
                            ),
                            starOffColor: colorTheme.primaryContainer,
                            starColor: colorTheme.primary,
                          ),
                        ),
                      );
                    },
                    textForm: (name, length, selector, save) {
                      return _TextField(
                        text: selector(value) ?? '',
                        editCallback: save,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _TextField extends StatefulWidget {
  const _TextField({
    super.key,
    required this.text,
    required this.editCallback,
  });

  final String text;
  final FeedBackModel Function(String) editCallback;

  @override
  State<_TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<_TextField> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.text;
  }

  @override
  void didUpdateWidget(covariant _TextField oldWidget) {
    controller.text = widget.text;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<FeedBackPresenter>();
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return TextField(
      maxLines: null,
      controller: controller,
      onChanged: (v) {
        presenter.feedBack.value = widget.editCallback(v);
      },
      style: textTheme.bodyLarge?.copyWith(
        color: colorTheme.primary,
      ),
      maxLength: 250,
      onSubmitted: (v) {
        presenter.getSubmitCallback()?.call();
        presenter.feedBack.value = widget.editCallback(v);
      },
    );
  }
}

class _PaginationDots extends StatelessWidget {
  const _PaginationDots({
    Key? key,
    required this.pageController,
    required this.length,
  }) : super(key: key);

  final PageController pageController;
  final int length;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    // todo(netos23): upgrade animation
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, _) {
        final page = pageController.page ?? 0;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(length, (index) {
            final isActive = page.round() == index;
            return Flexible(
              child: Container(
                width: isActive ? 10 : 8,
                height: isActive ? 10 : 8,
                margin: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? colorTheme.primary : colorTheme.secondary,
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
