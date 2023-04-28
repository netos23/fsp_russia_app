import 'package:flutter/material.dart';
import 'package:fsp_russia_app/domain/contest_service.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:fsp_russia_app/domain/auth_service.dart';
import 'package:fsp_russia_app/screens/my_contests_screen/my_contests_screen_presenter.dart';
import 'package:provider/provider.dart';
import 'package:fsp_russia_app/domain/contest_service.dart';
import 'package:fsp_russia_app/entity/contest_model.dart';
import 'package:shimmer/shimmer.dart';

class ContestCard extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onAnalitics;
  final VoidCallback? onTapToFavorite;

  const ContestCard({
    this.onTap,
    this.onTapToFavorite,
    Key? key,
    this.onEdit,
    this.onAnalitics,
    required,
    required this.item,
  }) : super(key: key);

  final ContestModel item;

  @override
  Widget build(BuildContext context) {
    final contest = ContestService();
    final isInFavorite = contest.favourites.contains(item);
    final colorSheme = Theme.of(context).colorScheme;
    final start = item.begin;
    final end = item.end;
    double? dt;
    if (start != null && end != null) {
      final d = DateTime.fromMillisecondsSinceEpoch(
          end.millisecondsSinceEpoch - start.millisecondsSinceEpoch);
      dt = d.hour + d.minute / 60;
    }
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
                                    item.name,
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
                                    item.cityId ?? "Город не указан",
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
                                            AuthService().model?.type != null) {
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
                                    start == null
                                        ? ''
                                        : '${start.day}.${start.month}.${start.year} ${start.hour}:${start.minute}',
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
                                    dt == null
                                        ? 'Время не указано'
                                        : '$dt часа',
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
              onPressed: () {
                if (isInFavorite) {
                  contest.favourites.remove(item);
                  contest.notifyFavourites();
                } else {
                  contest.favourites.add(item);
                  contest.notifyFavourites();
                }
              },
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
