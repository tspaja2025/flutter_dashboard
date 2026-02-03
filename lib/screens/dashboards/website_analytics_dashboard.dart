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
                    children: [const SizedBox(height: 4)],
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
                      const Text("Sales by Countries").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Last 28 days").muted().small(),
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
