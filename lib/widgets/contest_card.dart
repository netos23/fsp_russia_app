import 'package:flutter/material.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/screens/my_contests_screen/my_contests_screen_presenter.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class ContestCard extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onAnalitics;
  final VoidCallback? onTapToFavorite;
  final bool isInFavorite;

  const ContestCard({
    this.isInFavorite = false,
    this.onTap,
    this.onTapToFavorite,
    Key? key,
    this.onEdit,
    this.onAnalitics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.hardEdge,
            child: DefaultTextStyle(
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
              child: SizedBox(
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image.network(
                        'https://codeforces.com/predownloaded/af/22/af228fee1abb015217d8c524de74898aeff36419.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Title',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize: 24,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground),
                                  ),
                                  Text(
                                    'Subtitle',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  AnimatedBuilder(
                                      animation: AuthService(),
                                      builder: (c, w) {
                                        if (AuthService().model?.type != 0 &&
                                            AuthService().model?.type !=
                                                null) {
                                          return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                if (onEdit != null)
                                                  IconButton(
                                                    onPressed: onEdit,
                                                    icon: Icon(
                                                      Icons.edit,
                                                      color: colorSheme.primary,
                                                    ),
                                                  ),
                                                if (onAnalitics != null)
                                                  IconButton(
                                                    onPressed: onAnalitics,
                                                    icon: Icon(
                                                      Icons.analytics_outlined,
                                                      color: colorSheme.primary,
                                                    ),
                                                  ),
                                              ]);
                                        }
                                        return SizedBox.shrink();
                                      }),
                                  Text(
                                    '10.10.2023 13:00',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground),
                                  ),
                                  Text(
                                    '4 часа',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                isInFavorite ? Icons.bookmark : Icons.bookmark_border,
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
