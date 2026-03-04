import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class FinanceDashboardScreen extends StatefulWidget {
  const FinanceDashboardScreen({super.key});

  @override
  State<FinanceDashboardScreen> createState() => _FinanceDashboardScreenState();
}

class _FinanceDashboardScreenState extends State<FinanceDashboardScreen> {
  final transactions = [
    TransactionsRow(
      transaction: "Samantha William",
      date: "2026-02-09",
      type: "Income",
      amount: "\$1640.26",
    ),
    TransactionsRow(
      transaction: "Grocery at Shop",
      date: "2026-02-09",
      type: "Expenses",
      amount: "-\$72.64",
    ),
    TransactionsRow(
      transaction: "Coffee",
      date: "2026-02-09",
      type: "Expenses",
      amount: "-\$8.65",
    ),
    TransactionsRow(
      transaction: "Karen Smith",
      date: "2026-02-09",
      type: "Income",
      amount: "\$842.50",
    ),
    TransactionsRow(
      transaction: "Transportation",
      date: "2026-02-09",
      type: "Expenses",
      amount: "-\$18.52",
    ),
    TransactionsRow(
      transaction: "Online Course Purchase",
      date: "2026-02-09",
      type: "Expenses",
      amount: "-\$120.00",
    ),
    TransactionsRow(
      transaction: "Freelance Project Payment",
      date: "2026-02-09",
      type: "Income",
      amount: "-\$980.75",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Finance Dashboard").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "My Balance",
                subtitle: "+12.5% compared to last month",
                children: [
                  const Text("\$125,430").x2Large.bold,

                  const SizedBox(height: 16),

                  Row(
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
                  ).gap(8),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Net Profit",
                subtitle: "+8.5% compared to last month",
                children: [const Text("\$38,700").x2Large.bold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Expenses",
                subtitle: "-5.5% compared to last month",
                children: [const Text("\$26,450").x2Large.bold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Pending Invoices",
                subtitle: "+12.5% compared to last month",
                children: [const Text("\$3,200").x2Large.bold],
              ),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Income Sources",
                subtitle: "Total Income | +15.5% compared to last month",
                children: [
                  const Text("\$92,000").x2Large.bold,

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 170,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(12),
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
                        decoration: BoxDecoration(color: Colors.gray.shade700),
                      ),
                      Container(
                        width: 70,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.gray.shade400,
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                      const Text("Rental").muted,
                      const Spacer(),
                      const Text("\$35,000"),
                    ],
                  ).gap(8),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.gray,
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                      const Text("Investments").muted,
                      const Spacer(),
                      const Text("\$28,000"),
                    ],
                  ).gap(8),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.gray.shade700,
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                      const Text("Business").muted,
                      const Spacer(),
                      const Text("\$18,000"),
                    ],
                  ).gap(8),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.gray.shade400,
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                      const Text("Freelance").muted,
                      const Spacer(),
                      const Text("\$11,000"),
                    ],
                  ).gap(8),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Monthly Expenses",
                subtitle: "Last 6 months",
                children: [
                  SizedBox(
                    height: 75,
                    child: BarChart(
                      BarChartData(
                        barTouchData: BarTouchData(
                          enabled: false,
                          touchTooltipData: BarTouchTooltipData(
                            getTooltipColor: (group) => Colors.transparent,
                            tooltipPadding: EdgeInsets.zero,
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
                                      fontWeight: FontWeight.bold,
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
                                borderRadius: BorderRadius.circular(4),
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
                                borderRadius: BorderRadius.circular(4),
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
                                borderRadius: BorderRadius.circular(8),
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
                                borderRadius: BorderRadius.circular(4),
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
                                borderRadius: BorderRadius.circular(4),
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
                                borderRadius: BorderRadius.circular(4),
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
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                        gridData: const FlGridData(show: false),
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Summary",
                subtitle: "Data from 1-12 Jan, 2026",
                children: [PieChartSample()],
              ),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Transactions",
                subtitle: "",
                trailing: [
                  OutlineButton(
                    onPressed: () {},
                    child: const Text("View All"),
                  ),
                ],
                children: [
                  TableWidget(
                    columnWidths: {
                      0: FixedTableSize(215),
                      1: FixedTableSize(150),
                    },
                    hasCheckbox: false,
                    headerChildren: [
                      _buildHeaderCell("Transaction"),
                      _buildHeaderCell("Date"),
                      _buildHeaderCell("Type"),
                      _buildHeaderCell("Amount", true),
                    ],
                    bodyChildren: [
                      ...transactions.map((row) => _buildDataRow(context, row)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardWidget(
                    title: "Saving Goal",
                    subtitle: "75% progress",
                    trailing: [
                      OutlineButton(
                        onPressed: () {},
                        child: const Text("View Report"),
                      ),
                    ],
                    children: [
                      Row(
                        children: [
                          const Text("\$1052.98").x2Large.bold,
                          const Text("of \$1200").muted.small,
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        height: 8,
                        child: Progress(progress: 70, min: 0, max: 100),
                      ),
                    ],
                  ),
                  CardWidget(
                    title: "My Wallet",
                    subtitle: "A total of 4 cards are listed",
                    trailing: [
                      OutlineButton(
                        onPressed: () {},
                        leading: const Icon(LucideIcons.plus),
                        child: const Text("Add New"),
                      ),
                    ],
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          filled: true,
                          fillColor: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Credit Card"),

                              const SizedBox(height: 16),

                              const Text("1234 **** **** 5678"),

                              const SizedBox(height: 64),

                              const Text("\$5,325.57").x2Large.bold,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ).gap(16),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
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
        padding: const EdgeInsets.all(8),
        alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(text).muted.semiBold,
      ),
    );
  }

  TableCell _buildCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(text),
      ),
    );
  }

  TableRow _buildDataRow(BuildContext context, TransactionsRow row) {
    return TableRow(
      cells: [
        _buildCell(row.transaction),
        _buildCell(row.date),
        _buildCell(row.type),
        _buildCell(row.amount, true),
      ],
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

class TransactionsRow {
  final String transaction;
  final String date;
  final String type;
  final String amount;

  TransactionsRow({
    required this.transaction,
    required this.date,
    required this.type,
    required this.amount,
  });
}
