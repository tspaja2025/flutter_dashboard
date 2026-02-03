import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class WebsiteAnalyticsDashboardScreen extends StatelessWidget {
  const WebsiteAnalyticsDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("Website Analytics Dashboard").bold().large(),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Daily active users").muted().small(),
                          const Spacer(),
                          const Chip(child: Text("+12.1%")),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text("3,450").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Weekly sessions").muted().small(),
                          const Spacer(),
                          const Chip(child: Text("-9.8%")),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text("1,342").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Duration").muted().small(),
                          const Spacer(),
                          const Chip(child: Text("+7.7%")),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text("5.2min").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Conversion Rate").muted().small(),
                          const Spacer(),
                          const Chip(child: Text("+4.3%")),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text("2.8%").semiBold(),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Earning Reports").semiBold(),
                              const SizedBox(height: 4),
                              const Text("Last 28 days").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Builder(
                            builder: (context) {
                              return OutlineButton(
                                onPressed: () {
                                  showDropdown(
                                    context: context,
                                    builder: (context) {
                                      return const DropdownMenu(
                                        children: [
                                          MenuButton(child: Text("Excel")),
                                          MenuButton(child: Text("PDF")),
                                        ],
                                      );
                                    },
                                  );
                                },
                                leading: const Icon(LucideIcons.download),
                                child: const Text("Export"),
                              );
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      const Text("\$1.468").large().bold(),

                      const SizedBox(height: 16),

                      SizedBox(
                        height: 75,
                        child: BarChart(
                          BarChartData(
                            barTouchData: BarTouchData(
                              enabled: false,
                              touchTooltipData: BarTouchTooltipData(
                                getTooltipColor: (group) => Colors.transparent,
                                tooltipPadding: .zero,
                                tooltipMargin: 8,
                                getTooltipItem:
                                    (
                                      BarChartGroupData group,
                                      int groupIndex,
                                      BarChartRodData rod,
                                      int rodIndex,
                                    ) {
                                      return BarTooltipItem(
                                        rod.toY.round().toString(),
                                        TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.primary,
                                          fontWeight: .bold,
                                        ),
                                      );
                                    },
                              ),
                            ),
                            titlesData: FlTitlesData(
                              show: true,
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 30,
                                  getTitlesWidget: getTitles,
                                ),
                              ),
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            borderData: FlBorderData(show: false),
                            barGroups: [
                              BarChartGroupData(
                                x: 0,
                                barRods: [
                                  BarChartRodData(
                                    toY: 35,
                                    width: 47,
                                    borderRadius: .circular(4),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 1,
                                barRods: [
                                  BarChartRodData(
                                    toY: 30,
                                    width: 47,
                                    borderRadius: .circular(4),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 2,
                                barRods: [
                                  BarChartRodData(
                                    toY: 37,
                                    width: 47,
                                    borderRadius: .circular(8),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 3,
                                barRods: [
                                  BarChartRodData(
                                    toY: 14,
                                    width: 47,
                                    borderRadius: .circular(4),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 4,
                                barRods: [
                                  BarChartRodData(
                                    toY: 20,
                                    width: 47,
                                    borderRadius: .circular(4),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 5,
                                barRods: [
                                  BarChartRodData(
                                    toY: 24,
                                    width: 47,
                                    borderRadius: .circular(4),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 6,
                                barRods: [
                                  BarChartRodData(
                                    toY: 38,
                                    width: 47,
                                    borderRadius: .circular(4),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                            gridData: const FlGridData(show: false),
                            alignment: .spaceAround,
                            maxY: 40,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(8),
                        backgroundColor: Colors.transparent,
                        child: Column(
                          children: [
                            Row(
                              spacing: 8,
                              children: [
                                OutlinedContainer(
                                  width: 40,
                                  height: 40,
                                  backgroundColor: Colors.transparent,
                                  child: const Icon(LucideIcons.dollarSign),
                                ),
                                const Text("Earnings"),
                                const Spacer(),
                                const Text("\$545.69"),
                              ],
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              child: Progress(progress: 60, min: 0, max: 100),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(8),
                        backgroundColor: Colors.transparent,
                        child: Column(
                          children: [
                            Row(
                              spacing: 8,
                              children: [
                                OutlinedContainer(
                                  width: 40,
                                  height: 40,
                                  backgroundColor: Colors.transparent,
                                  child: const Icon(LucideIcons.chartLine),
                                ),
                                const Text("Profit"),
                                const Spacer(),
                                const Text("\$256.34"),
                              ],
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              child: Progress(progress: 40, min: 0, max: 100),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(8),
                        backgroundColor: Colors.transparent,
                        child: Column(
                          children: [
                            Row(
                              spacing: 8,
                              children: [
                                OutlinedContainer(
                                  width: 40,
                                  height: 40,
                                  backgroundColor: Colors.transparent,
                                  child: const Icon(LucideIcons.handCoins),
                                ),
                                const Text("Expense"),
                                const Spacer(),
                                const Text("\$74.19"),
                              ],
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              child: Progress(progress: 80, min: 0, max: 100),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      PieChartSample(),

                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: .spaceEvenly,
                        children: [
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.ticket),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("New Tickets"),
                              const Text("40").muted(),
                            ],
                          ),
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.clock),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Open Tickets"),
                              const Text("25").muted(),
                            ],
                          ),
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.messageCircleReply),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Response time"),
                              const Text("1 Day").muted(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Website Analytics").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Total 28.5% Conversion Rate").muted().small(),

                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                spacing: 8,
                                children: [
                                  const Chip(child: Text("432")),
                                  const Text("Direct"),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                spacing: 8,
                                children: [
                                  const Chip(child: Text("29%")),
                                  const Text("Sessions"),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                spacing: 8,
                                children: [
                                  const Chip(child: Text("1.6K")),
                                  const Text("Leads"),
                                ],
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                spacing: 8,
                                children: [
                                  const Chip(child: Text("216")),
                                  const Text("Organic"),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                spacing: 8,
                                children: [
                                  const Chip(child: Text("2.3K")),
                                  const Text("Page Views"),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                spacing: 8,
                                children: [
                                  const Chip(child: Text("8%")),
                                  const Text("Conversions"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Average Daily Sales").muted().small(),
                      const SizedBox(height: 4),
                      const Text("\$28,450").semiBold(),

                      const SizedBox(height: 16),

                      LineChartSample(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Sales Overview").muted().small(),
                      const SizedBox(height: 4),
                      const Text("\$42.5K").semiBold(),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Chip(child: Text("62.2%")),
                          const Text("Orders"),
                          const Spacer(),
                          const Chip(child: Text("25.5%")),
                          const Text("Visits"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 80, min: 0, max: 100),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Sales by Countries").semiBold(),
                              const SizedBox(height: 4),
                              const Text("Last 28 days").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            trailing: const Icon(LucideIcons.chevronRight),
                            child: const Text("View All"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("United States"),
                              const Text(
                                "+20.1% from last month",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("+\$1.999.00"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Brazil"),
                              const Text(
                                "+20.1% from last month",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("+\$1.999.00"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("India"),
                              const Text(
                                "+20.1% from last month",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("+\$1.999.00"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Australia"),
                              const Text(
                                "+20.1% from last month",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("+\$1.999.00"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("France"),
                              const Text(
                                "+20.1% from last month",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("+\$1.999.00"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Greece"),
                              const Text(
                                "+20.1% from last month",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("+\$1.999.00"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Total Earning").muted().small(),
                      const SizedBox(height: 4),
                      const Text("83%").semiBold(),

                      const SizedBox(height: 16),

                      BarChartSample(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Monthly Campaign State ").semiBold(),
                      const SizedBox(height: 4),
                      const Text("8.5 social visitors").muted().small(),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.mail),
                          ),
                          const Text("Emails"),
                          const Spacer(),
                          const Text("1.503"),
                          const Chip(child: Text("-0.3%")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.eye),
                          ),
                          const Text("Opened"),
                          const Spacer(),
                          const Text("1.503"),
                          const Chip(child: Text("-0.3%")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.pointer),
                          ),
                          const Text("Clicked"),
                          const Spacer(),
                          const Text("1.503"),
                          const Chip(child: Text("-0.3%")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.userPlus),
                          ),
                          const Text("Subscribe"),
                          const Spacer(),
                          const Text("1.503"),
                          const Chip(child: Text("-0.3%")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.circleAlert),
                          ),
                          const Text("Complaints"),
                          const Spacer(),
                          const Text("1.503"),
                          const Chip(child: Text("-0.3%")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          OutlinedContainer(
                            width: 40,
                            height: 40,
                            child: const Icon(LucideIcons.userMinus),
                          ),
                          const Text("Unsubscribe"),
                          const Spacer(),
                          const Text("1.503"),
                          const Chip(child: Text("-0.3%")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.white,
      fontWeight: .bold,
      fontSize: 14,
    );
    String text = switch (value.toInt()) {
      0 => 'Mon',
      1 => 'Tue',
      2 => 'Wed',
      3 => 'Thu',
      4 => 'Fri',
      5 => 'Sat',
      6 => 'Sun',
      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }
}

class PieChartSample extends StatefulWidget {
  const PieChartSample({super.key});

  @override
  State<PieChartSample> createState() => PieChartSampleState();
}

class PieChartSampleState extends State<PieChartSample> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!
                            .touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const SizedBox(width: 28),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      return switch (i) {
        0 => PieChartSectionData(
          color: Colors.black,
          value: 88,
          title: '88%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        ),
        1 => PieChartSectionData(
          color: Colors.gray,
          value: 12,
          title: '12%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        ),
        _ => throw StateError('Invalid'),
      };
    });
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }
}

class LineChartSample extends StatefulWidget {
  const LineChartSample({super.key});

  @override
  State<LineChartSample> createState() => LineChartSampleState();
}

class LineChartSampleState extends State<LineChartSample> {
  List<Color> gradientColors = [Colors.gray, Colors.gray.shade400];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.7,
          child: Padding(
            padding: const .only(right: 18, left: 12, top: 24, bottom: 12),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  horizontalInterval: 1,
                  verticalInterval: 1,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: Theme.of(context).colorScheme.border,
                      strokeWidth: 1,
                    );
                  },
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: Theme.of(context).colorScheme.border,
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: .all(color: Theme.of(context).colorScheme.border),
                ),
                minX: 0,
                maxX: 12,
                minY: 0,
                maxY: 6,
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 3),
                      FlSpot(2, 2),
                      FlSpot(4, 5),
                      FlSpot(6, 3.1),
                      FlSpot(8, 4),
                      FlSpot(10, 3),
                      FlSpot(12, 4),
                    ],
                    isCurved: true,
                    gradient: LinearGradient(colors: gradientColors),
                    barWidth: 5,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: gradientColors
                            .map((color) => color.withValues(alpha: 0.3))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BarChartSample extends StatefulWidget {
  const BarChartSample({super.key});

  @override
  State<BarChartSample> createState() => BarChartSampleState();
}

class BarChartSampleState extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Padding(
        padding: const .only(top: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final barsSpace = 4.0 * constraints.maxWidth / 400;
            final barsWidth = 32.0 * constraints.maxWidth / 400;

            return BarChart(
              BarChartData(
                alignment: .center,
                barTouchData: const BarTouchData(enabled: true),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowVerticalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Theme.of(
                      context,
                    ).colorScheme.border.withValues(alpha: 0.1),
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(show: false),
                groupsSpace: barsSpace,
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 4,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 5,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      0 => "Jan",
      1 => "Feb",
      2 => "Mar",
      3 => "Apr",
      4 => "May",
      5 => "Jun",
      _ => "",
    };

    return SideTitleWidget(
      meta: meta,
      child: Text(text, style: const TextStyle(fontSize: 10)),
    );
  }
}
