import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class FinanceDashboardScreen extends StatelessWidget {
  const FinanceDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Finance Dashboard").bold().large()]),

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
                      const Text("My Balance").semiBold(),

                      const SizedBox(height: 16),

                      const Text("\$125,430").x2Large().bold(),
                      const Text(
                        "+12.5% compared to last month",
                      ).muted().small(),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          PrimaryButton(
                            onPressed: () {},
                            leading: const Icon(LucideIcons.arrowUp),
                            child: const Text("Transfer"),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            leading: const Icon(LucideIcons.arrowDown),
                            child: const Text("Request"),
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
                      const Text("Net Profit").semiBold(),

                      const SizedBox(height: 16),

                      const Text("\$38,700").x2Large().bold(),
                      const Text(
                        "+8.5% compared to last month",
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
                      const Text("Expenses").semiBold(),

                      const SizedBox(height: 16),

                      const Text("\$26,450").x2Large().bold(),
                      const Text(
                        "-5.5% compared to last month",
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
                      const Text("Pending Invoices").semiBold(),

                      const SizedBox(height: 16),

                      const Text("\$3,200").x2Large().bold(),
                      const Text(
                        "+12.5% compared to last month",
                      ).muted().small(),
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
                      const Text("Income Sources").semiBold(),

                      const SizedBox(height: 16),

                      const Text("Total Income").muted().small(),
                      const Text("\$92,000").x2Large().bold(),
                      const Text(
                        "+15.5% compared to last month",
                      ).muted().small(),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Container(
                            width: 170,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.horizontal(
                                left: .circular(12),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 12,
                            decoration: BoxDecoration(color: Colors.gray),
                          ),
                          Container(
                            width: 100,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.gray.shade700,
                            ),
                          ),
                          Container(
                            width: 70,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.gray.shade400,
                              borderRadius: BorderRadius.horizontal(
                                right: .circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: .circular(999),
                            ),
                          ),
                          const Text("Rental").muted(),
                          const Spacer(),
                          const Text("\$35,000"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.gray,
                              borderRadius: .circular(999),
                            ),
                          ),
                          const Text("Investments").muted(),
                          const Spacer(),
                          const Text("\$28,000"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.gray.shade700,
                              borderRadius: .circular(999),
                            ),
                          ),
                          const Text("Business").muted(),
                          const Spacer(),
                          const Text("\$18,000"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.gray.shade400,
                              borderRadius: .circular(999),
                            ),
                          ),
                          const Text("Freelance").muted(),
                          const Spacer(),
                          const Text("\$11,000"),
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
                      const Text("Monthly Expenses").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Last 6 months").muted().small(),

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
                      const Text("Summary").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Data from 1-12 Apr, 2024").muted().small(),

                      const SizedBox(height: 16),

                      PieChartSample(),
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
                          const Text("Transactions").semiBold(),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            child: const Text("View All"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Table(
                        columnWidths: {
                          0: FixedTableSize(215),
                          1: FixedTableSize(150),
                        },
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              _buildHeaderCell("Transaction"),
                              _buildHeaderCell("Date"),
                              _buildHeaderCell("Type"),
                              _buildHeaderCell("Amount", true),
                            ],
                          ),

                          // Body rows
                          TableRow(
                            cells: [
                              _buildCell("Samantha William"),
                              _buildCell("2026-02-09"),
                              _buildCell("Income"),
                              _buildCell("\$1640.26", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("Grocery at Shop"),
                              _buildCell("2026-02-09"),
                              _buildCell("Expenses"),
                              _buildCell("-\$72.64", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("Coffee"),
                              _buildCell("2026-02-09"),
                              _buildCell("Expenses"),
                              _buildCell("-\$8.65", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("Karen Smith"),
                              _buildCell("2026-02-09"),
                              _buildCell("Income"),
                              _buildCell("\$842.50", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("Transportation"),
                              _buildCell("2026-02-09"),
                              _buildCell("Expenses"),
                              _buildCell("-\$18.52", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("Online Course Purchase"),
                              _buildCell("2026-02-09"),
                              _buildCell("Expenses"),
                              _buildCell("-\$120.00", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("Freelance Project Payment"),
                              _buildCell("2026-02-09"),
                              _buildCell("Income"),
                              _buildCell("-\$980.75", true),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
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
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("Saving Goal").semiBold(),
                                    const SizedBox(height: 4),
                                    const Text("75% Progress").muted().small(),
                                  ],
                                ),
                                const Spacer(),
                                OutlineButton(
                                  onPressed: () {},
                                  child: const Text("View Report"),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                const Text("\$1052.98").x2Large().bold(),
                                const Text("of \$1200").muted().small(),
                              ],
                            ),

                            const SizedBox(height: 16),

                            SizedBox(
                              width: double.infinity,
                              height: 8,
                              child: Progress(progress: 70, min: 0, max: 100),
                            ),
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
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("My Wallet").semiBold(),
                                    const SizedBox(height: 4),
                                    const Text(
                                      "A total of 4 cards are listed",
                                    ).muted().small(),
                                  ],
                                ),
                                const Spacer(),
                                OutlineButton(
                                  onPressed: () {},
                                  leading: const Icon(LucideIcons.plus),
                                  child: const Text("Add New"),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                filled: true,
                                fillColor: Colors.green,
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("Credit Card"),

                                    const SizedBox(height: 16),

                                    const Text("1234 **** **** 5678"),

                                    const SizedBox(height: 64),

                                    const Text("\$5,325.57").x2Large().bold(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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

  TableCell _buildHeaderCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const .all(8),
        alignment: alignRight ? .centerRight : .centerLeft,
        child: Text(text).muted().semiBold(),
      ),
    );
  }

  TableCell _buildCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const .all(8),
        alignment: alignRight ? .centerRight : .centerLeft,
        child: Text(text),
      ),
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
