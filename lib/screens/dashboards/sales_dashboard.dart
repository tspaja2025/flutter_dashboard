import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SalesDashboardScreen extends StatefulWidget {
  const SalesDashboardScreen({super.key});

  @override
  State<SalesDashboardScreen> createState() => SalesDashboardScreenState();
}

class SalesDashboardScreenState extends State<SalesDashboardScreen> {
  bool _isDesktop = true;

  final List<ChartData> _desktopData = [
    ChartData(value: 222, label: "Apr 5"),
    ChartData(value: 97, label: "Apr 10"),
    ChartData(value: 167, label: "Apr 15"),
    ChartData(value: 242, label: "Apr 20"),
    ChartData(value: 373, label: "Apr 25"),
    ChartData(value: 301, label: "Apr 30"),
    ChartData(value: 245, label: "May 5"),
    ChartData(value: 409, label: "May 10"),
    ChartData(value: 59, label: "May 15"),
    ChartData(value: 261, label: "May 20"),
    ChartData(value: 327, label: "May 25"),
    ChartData(value: 292, label: "May 30"),
    ChartData(value: 342, label: "Jun 5"),
    ChartData(value: 137, label: "Jun 10"),
    ChartData(value: 138, label: "Jun 15"),
    ChartData(value: 446, label: "Jun 20"),
    ChartData(value: 364, label: "Jun 25"),
    ChartData(value: 243, label: "Jun 30"),
    ChartData(value: 89, label: "Jul 5"),
    ChartData(value: 137, label: "Jul 10"),
    ChartData(value: 224, label: "Jul 15"),
    ChartData(value: 138, label: "Jul 20"),
    ChartData(value: 387, label: "Jul 25"),
    ChartData(value: 215, label: "Jul 30"),
    ChartData(value: 75, label: "Aug 5"),
    ChartData(value: 383, label: "Aug 10"),
    ChartData(value: 122, label: "Aug 15"),
    ChartData(value: 315, label: "Aug 20"),
    ChartData(value: 454, label: "Aug 25"),
    ChartData(value: 165, label: "Aug 30"),
    ChartData(value: 293, label: "Sep 5"),
    ChartData(value: 247, label: "Sep 10"),
    ChartData(value: 385, label: "Sep 15"),
    ChartData(value: 481, label: "Sep 20"),
    ChartData(value: 498, label: "Sep 25"),
    ChartData(value: 388, label: "Sep 30"),
    ChartData(value: 149, label: "Oct 5"),
    ChartData(value: 227, label: "Oct 10"),
    ChartData(value: 293, label: "Oct 15"),
    ChartData(value: 335, label: "Oct 20"),
    ChartData(value: 197, label: "Oct 25"),
    ChartData(value: 197, label: "Oct 30"),
    ChartData(value: 448, label: "Nov 5"),
    ChartData(value: 473, label: "Nov 10"),
    ChartData(value: 338, label: "Nov 15"),
    ChartData(value: 499, label: "Nov 20"),
    ChartData(value: 315, label: "Nov 25"),
    ChartData(value: 335, label: "Nov 30"),
    ChartData(value: 235, label: "Dec 5"),
    ChartData(value: 177, label: "Dec 15"),
    ChartData(value: 82, label: "Dec 20"),
  ];

  final List<ChartData> _mobileData = [
    ChartData(value: 150, label: "Apr 5"),
    ChartData(value: 180, label: "Apr 10"),
    ChartData(value: 120, label: "Apr 15"),
    ChartData(value: 260, label: "Apr 20"),
    ChartData(value: 290, label: "Apr 25"),
    ChartData(value: 340, label: "Apr 30"),
    ChartData(value: 180, label: "May 5"),
    ChartData(value: 320, label: "May 10"),
    ChartData(value: 110, label: "May 15"),
    ChartData(value: 190, label: "May 20"),
    ChartData(value: 350, label: "May 25"),
    ChartData(value: 210, label: "May 30"),
    ChartData(value: 380, label: "Jun 5"),
    ChartData(value: 220, label: "Jun 10"),
    ChartData(value: 170, label: "Jun 15"),
    ChartData(value: 190, label: "Jun 20"),
    ChartData(value: 360, label: "Jun 25"),
    ChartData(value: 410, label: "Jun 30"),
    ChartData(value: 180, label: "Jul 5"),
    ChartData(value: 150, label: "Jul 10"),
    ChartData(value: 200, label: "Jul 15"),
    ChartData(value: 170, label: "Jul 20"),
    ChartData(value: 230, label: "Jul 25"),
    ChartData(value: 290, label: "Jul 30"),
    ChartData(value: 250, label: "Aug 5"),
    ChartData(value: 130, label: "Aug 10"),
    ChartData(value: 420, label: "Aug 15"),
    ChartData(value: 180, label: "Aug 20"),
    ChartData(value: 240, label: "Aug 25"),
    ChartData(value: 380, label: "Aug 30"),
    ChartData(value: 220, label: "Sep 5"),
    ChartData(value: 310, label: "Sep 10"),
    ChartData(value: 190, label: "Sep 15"),
    ChartData(value: 420, label: "Sep 20"),
    ChartData(value: 390, label: "Sep 25"),
    ChartData(value: 520, label: "Sep 30"),
    ChartData(value: 300, label: "Oct 5"),
    ChartData(value: 210, label: "Oct 10"),
    ChartData(value: 180, label: "Oct 15"),
    ChartData(value: 330, label: "Oct 20"),
    ChartData(value: 270, label: "Oct 25"),
    ChartData(value: 240, label: "Oct 30"),
    ChartData(value: 160, label: "Nov 5"),
    ChartData(value: 490, label: "Nov 10"),
    ChartData(value: 160, label: "Nov 15"),
    ChartData(value: 490, label: "Nov 20"),
    ChartData(value: 380, label: "Nov 25"),
    ChartData(value: 400, label: "Nov 30"),
    ChartData(value: 420, label: "Dec 5"),
    ChartData(value: 350, label: "Dec 15"),
    ChartData(value: 180, label: "Dec 20"),
  ];

  @override
  Widget build(BuildContext context) {
    final currentData = _isDesktop ? _desktopData : _mobileData;
    final maxValue = currentData
        .map((e) => e.value)
        .reduce((a, b) => a > b ? a : b);

    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Sales Dashboard").bold().large()]),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                flex: 2,
                child: Card(
                  padding: const .all(0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const .only(left: 16),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("Revenue Chart").bold(),
                                const Text("Last 28 days").muted().small(),
                              ],
                            ),
                          ),
                          const Spacer(),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isDesktop = true;
                                });
                              },
                              child: Container(
                                width: 110,
                                padding: const .all(16),
                                decoration: BoxDecoration(
                                  color: _isDesktop
                                      ? Theme.of(context).colorScheme.secondary
                                      : Theme.of(context).colorScheme.card,
                                  border: Border(
                                    left: BorderSide(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.border,
                                    ),
                                    bottom: BorderSide(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.border,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: .circular(12),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("Desktop").muted().small(),
                                    const Text("13,746").large().bold(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isDesktop = false;
                                });
                              },
                              child: Container(
                                width: 110,
                                padding: const .all(16),
                                decoration: BoxDecoration(
                                  color: _isDesktop
                                      ? Theme.of(context).colorScheme.card
                                      : Theme.of(context).colorScheme.secondary,
                                  border: Border(
                                    left: BorderSide(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.border,
                                    ),
                                    bottom: BorderSide(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.border,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("Mobile").muted().small(),
                                    const Text("13,580").large().bold(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 50),

                      RevenueBarChart(
                        data: currentData,
                        maxY: (maxValue * 1.2)
                            .ceilToDouble(), // Add 20% padding
                        barColor: Theme.of(context).colorScheme.primary,
                        title: _isDesktop
                            ? "Desktop Revenue"
                            : "Mobile Revenue",
                        isDesktop: _isDesktop,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: Column(
                  spacing: 16,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Balance").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$103,045").semiBold(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Expense").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$15,010").semiBold(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: Column(
                  spacing: 16,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Income").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$78,000").semiBold(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Sales Tax").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$9,090").semiBold(),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                      const Text("Best Selling Product").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Top-Selling Products at a Glance",
                      ).muted().small(),
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
                      const Text("Track Order Status").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Analyze growth and changes in visitor patterns",
                      ).muted().small(),
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
}

// Base chart widget to avoid duplication
class RevenueBarChart extends StatelessWidget {
  final List<ChartData> data;
  final double maxY;
  final Color barColor;
  final String title;
  final bool isDesktop;

  const RevenueBarChart({
    super.key,
    required this.data,
    required this.maxY,
    required this.barColor,
    required this.title,
    required this.isDesktop,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: BarChart(
        BarChartData(
          barTouchData: _barTouchData(context),
          titlesData: _titlesData(context),
          borderData: FlBorderData(show: false),
          barGroups: _barGroups(context),
          gridData: const FlGridData(show: false),
          alignment: BarChartAlignment.spaceAround,
          maxY: maxY,
          groupsSpace: isDesktop ? 2 : 4, // Adjust spacing based on platform
        ),
      ),
    );
  }

  static const int maxLabels = 12;

  int _labelStep() {
    return (data.length / maxLabels).ceil();
  }

  BarTouchData _barTouchData(BuildContext context) => BarTouchData(
    enabled: true,
    handleBuiltInTouches: true,
    mouseCursorResolver: (event, response) {
      if (response == null || response.spot == null) {
        return SystemMouseCursors.basic;
      }
      return SystemMouseCursors.click;
    },
    touchTooltipData: BarTouchTooltipData(
      tooltipBorderRadius: .circular(8),
      tooltipPadding: const .symmetric(horizontal: 12, vertical: 8),
      getTooltipColor: (_) => Theme.of(context).colorScheme.popover,
      getTooltipItem: (group, groupIndex, rod, rodIndex) {
        return BarTooltipItem(
          data[group.x.toInt()].label,
          const TextStyle(fontWeight: .w600),
          children: [
            TextSpan(
              text: rod.toY.toInt().toString(),
              style: const TextStyle(fontWeight: .bold, fontSize: 16),
            ),
          ],
        );
      },
    ),
  );

  FlTitlesData _titlesData(BuildContext context) => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: (value, meta) => _getTitleWidget(value, meta, context),
      ),
    ),
    leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  Widget _getTitleWidget(double value, TitleMeta meta, BuildContext context) {
    final index = value.toInt();

    if (index < 0 || index >= data.length) return const SizedBox();

    // only show every Nth label
    if (index % _labelStep() != 0) {
      return const SizedBox();
    }

    return SideTitleWidget(
      meta: meta,
      space: 6,
      child: Text(
        data[index].label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.mutedForeground,
          fontSize: 12,
        ),
      ),
    );
  }

  List<BarChartGroupData> _barGroups(BuildContext context) => List.generate(
    data.length,
    (index) => BarChartGroupData(
      x: index,
      barRods: [
        BarChartRodData(
          toY: data[index].value,
          color: data[index].color ?? barColor,
          width: isDesktop ? 6 : 4, // Adjust bar width
          borderRadius: BorderRadius.circular(2),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: maxY,
            color: Theme.of(context).colorScheme.muted.withValues(alpha: 0.05),
          ),
        ),
      ],
      showingTooltipIndicators: [0],
    ),
  );
}

class ChartData {
  final double value;
  final String label;
  final Color? color;

  const ChartData({required this.value, required this.label, this.color});
}
