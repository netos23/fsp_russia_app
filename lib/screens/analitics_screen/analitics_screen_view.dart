import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class AnaliticsScreenView extends StatelessWidget {
  const AnaliticsScreenView({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textSheme = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: !kIsWeb,
            title: Text(title),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Статистика:',
                style: textSheme.headlineLarge?.copyWith(
                  color: colorTheme.onSurface,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate(
                [
                  const IntStatChrt(),
                  const IntStatChrt(),
                  const IntStatChrt(),
                  const IntStatChrt(),
                ],
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Отзывы участников:',
                style: textSheme.headlineLarge?.copyWith(
                  color: colorTheme.onSurface,
                ),
              ),
            ),
          ),
          kIsWeb
              ? SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      _buildReview,
                      childCount: 10,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      childAspectRatio: 0.6,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                  ),
                )
              : SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      _buildReview,
                      childCount: 10,
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  Widget? _buildReview(context, index) {
    final colorTheme = Theme.of(context).colorScheme;
    final textSheme = Theme.of(context).textTheme;

    final textColor = kIsWeb ? colorTheme.onSurface : colorTheme.onBackground;
    Widget child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Name(Rating)',
            style: textSheme.headlineLarge?.copyWith(
              color: textColor,
            ),
          ),
        ),
        Text(
          'Средняя оценка:',
          style: textSheme.bodyLarge?.copyWith(
            color: colorTheme.onSurface,
          ),
        ),
        RatingStars(
          value: 7,
          onValueChanged: null,
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
            size: 25,
          ),
          starCount: 10,
          starSize: 25,
          valueLabelColor: colorTheme.primary,
          valueLabelTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 10,
          starSpacing: 2,
          maxValueVisibility: true,
          valueLabelVisibility: true,
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
        Text(
          'Средняя оценка:',
          style: textSheme.bodyLarge?.copyWith(
            color: colorTheme.onSurface,
          ),
        ),
        RatingStars(
          value: 7,
          onValueChanged: null,
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
            size: 25,
          ),
          starCount: 10,
          starSize: 25,
          valueLabelColor: colorTheme.primary,
          valueLabelTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 10,
          starSpacing: 2,
          maxValueVisibility: true,
          valueLabelVisibility: true,
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
        Text(
          'Средняя оценка:',
          style: textSheme.bodyLarge?.copyWith(
            color: colorTheme.onSurface,
          ),
        ),
        RatingStars(
          value: 7,
          onValueChanged: null,
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
            size: 25,
          ),
          starCount: 10,
          starSize: 25,
          valueLabelColor: colorTheme.primary,
          valueLabelTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 10,
          starSpacing: 2,
          maxValueVisibility: true,
          valueLabelVisibility: true,
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
        Text(
          'Средняя оценка:',
          style: textSheme.bodyLarge?.copyWith(
            color: colorTheme.onSurface,
          ),
        ),
        RatingStars(
          value: 7,
          onValueChanged: null,
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
            size: 25,
          ),
          starCount: 10,
          starSize: 25,
          valueLabelColor: colorTheme.primary,
          valueLabelTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 10,
          starSpacing: 2,
          maxValueVisibility: true,
          valueLabelVisibility: true,
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
        Text(
          'Средняя оценка:',
          style: textSheme.bodyLarge?.copyWith(
            color: colorTheme.onSurface,
          ),
        ),
        RatingStars(
          value: 7,
          onValueChanged: null,
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
            size: 25,
          ),
          starCount: 10,
          starSize: 25,
          valueLabelColor: colorTheme.primary,
          valueLabelTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 10,
          starSpacing: 2,
          maxValueVisibility: true,
          valueLabelVisibility: true,
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
        const SizedBox(
          height: 10,
        ),
        Text(
          'Положительные моменты:',
          style: textSheme.bodyLarge?.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex',
          style: textSheme.bodyMedium?.copyWith(
            color: textColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Негативные моменты:',
          style: textSheme.bodyLarge?.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex',
          style: textSheme.bodyMedium?.copyWith(
            color: textColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Комментырий:',
          style: textSheme.bodyLarge?.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex',
          style: textSheme.bodyMedium?.copyWith(
            color: textColor,
          ),
        ),
      ],
    );

    if (kIsWeb) {
      child = Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: child,
        ),
      );
    }
    return child;
  }
}

class IntStatChrt extends StatefulWidget {
  const IntStatChrt({Key? key}) : super(key: key);

  @override
  State<IntStatChrt> createState() => _IntStatChrtState();
}

class _IntStatChrtState extends State<IntStatChrt> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textSheme = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Метрика',
              textAlign: TextAlign.center,
              style: textSheme.headlineLarge?.copyWith(
                color: colorTheme.onSurface,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Средняя оценка:',
              style: textSheme.bodyLarge?.copyWith(
                color: colorTheme.onSurface,
              ),
            ),
            RatingStars(
              value: 7,
              onValueChanged: null,
              starBuilder: (index, color) => Icon(
                Icons.star,
                color: color,
                size: 25,
              ),
              starCount: 10,
              starSize: 25,
              valueLabelColor: colorTheme.primary,
              valueLabelTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0),
              valueLabelRadius: 10,
              maxValue: 10,
              starSpacing: 2,
              maxValueVisibility: true,
              valueLabelVisibility: true,
              animationDuration: const Duration(
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
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(
                          touchCallback:
                              (FlTouchEvent event, pieTouchResponse) {
                            setState(() {
                              if (!event.isInterestedForInteractions ||
                                  pieTouchResponse == null ||
                                  pieTouchResponse.touchedSection == null) {
                                touchedIndex = -1;
                                return;
                              }
                              touchedIndex = pieTouchResponse
                                  .touchedSection!.touchedSectionIndex;
                            });
                          },
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections(),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Container(
                          height: 30,
                          width: 30,
                          color: colorTheme.primary.withOpacity(1.0 / (i + 1)),
                          child: Center(
                            child: Text(
                              i.toString(),
                              style: textSheme.bodyMedium?.copyWith(
                                color: colorTheme.onPrimary,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      final colorSheme = Theme.of(context).colorScheme;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: colorSheme.primary.withOpacity(1.0 / (i + 1)),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: colorSheme.onPrimary,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: colorSheme.primary.withOpacity(1.0 / (i + 1)),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: colorSheme.onPrimary,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: colorSheme.primary.withOpacity(1.0 / (i + 1)),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: colorSheme.onPrimary,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: colorSheme.primary.withOpacity(1.0 / (i + 1)),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: colorSheme.onPrimary,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    final textSheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          color: color,
        ),
        Text(
          text,
          style: textSheme.bodyLarge?.copyWith(
            color: colorSheme.onSurface,
          ),
        )
      ],
    );
  }
}
