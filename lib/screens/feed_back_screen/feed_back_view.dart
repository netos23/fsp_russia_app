import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'feed_back_presenter.dart';

class FeedBackView extends StatelessWidget {
  const FeedBackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<FeedBackPresenter>();
    return Scaffold(
      body: PageView.builder(
        itemCount: presenter.forms.length,
        itemBuilder: (context, index) {
          final form = presenter.forms[index];
          return Column(
            children: [
              Text(
                form.description,
              ),
              form.when<Widget>(
                ratingForm: (_, selector) => TextField(

                ),
                textForm: (_, length, selector) => TextField(

                ),
              ),
              if (presenter.forms.length - 1 == index)
                OutlinedButton(
                  onPressed: presenter.getSubmitCallback(),
                  child: Text('Отправить'),
                ),
            ],
          );
        },
      ),
    );
  }
}

class RatePage extends StatelessWidget {
  const RatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
