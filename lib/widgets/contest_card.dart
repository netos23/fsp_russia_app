import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ContestCard extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onTapToFavorite;
  final bool isInFavorite;

  const ContestCard({
    this.isInFavorite = false,
    this.onTap,
    this.onTapToFavorite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Card(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DefaultTextStyle(
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                        'https://codeforces.com/predownloaded/af/22/af228fee1abb015217d8c524de74898aeff36419.png',
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Title',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 24,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                  Text(
                    'Subtitle',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                ],
              ),
            ),
          )),
          Positioned(
              top: 4,
              right: 4,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  isInFavorite ? Icons.bookmark : Icons.bookmark_border,
                  color: Colors.amber,
                ),
              ))
        ],
      ),
    );
  }
}
