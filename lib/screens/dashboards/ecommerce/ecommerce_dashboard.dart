import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceDashboardScreen extends StatefulWidget {
  const EcommerceDashboardScreen({super.key});

  @override
  State<EcommerceDashboardScreen> createState() =>
      _EcommerceDashboardScreenState();
}

class _EcommerceDashboardScreenState extends State<EcommerceDashboardScreen> {
  final recentOrders = [
    RecentOrderRow(
      id: "# 1",
      customer: "Theodore Bell",
      product: "Tire Doodad",
      amount: "\$316.00",
      status: "Processing",
    ),
    RecentOrderRow(
      id: "# 2",
      customer: "Amelia Grant",
      product: "Engine Kit Kat",
      amount: "\$316.00",
      status: "Paid",
    ),
    RecentOrderRow(
      id: "# 3",
      customer: "Eleanor Ward",
      product: "Brake Pad",
      amount: "\$316.00",
      status: "Success",
    ),
    RecentOrderRow(
      id: "# 4",
      customer: "Henry Carter",
      product: "Fuel Pump",
      amount: "\$316.00",
      status: "Processing",
    ),
    RecentOrderRow(
      id: "# 5",
      customer: "Olivia Harris",
      product: "Steering Wheel",
      amount: "\$316.00",
      status: "Failed",
    ),
    RecentOrderRow(
      id: "# 6",
      customer: "James Robinson",
      product: "Air Filter",
      amount: "\$316.00",
      status: "Paid",
    ),
    RecentOrderRow(
      id: "# 7",
      customer: "Sophia Martinez",
      product: "Oil Filter",
      amount: "\$316.00",
      status: "Success",
    ),
    RecentOrderRow(
      id: "# 8",
      customer: "Liam Thompson",
      product: "Radiator Cap",
      amount: "\$316.00",
      status: "Processing",
    ),
  ];

  final bestSellingProducts = [
    BestSellingProductsRow(
      product: "Sport Shoes",
      sold: "\$316.00",
      sales: "10",
    ),
    BestSellingProductsRow(
      product: "Black T-Shirt",
      sold: "\$316.00",
      sales: "20",
    ),
    BestSellingProductsRow(product: "Jeans", sold: "\$316.00", sales: "15"),
    BestSellingProductsRow(
      product: "Red Sneakers",
      sold: "\$316.00",
      sales: "40",
    ),
    BestSellingProductsRow(product: "Red Scarf", sold: "\$316.00", sales: "37"),
    BestSellingProductsRow(
      product: "Kitchen Accessory",
      sold: "\$316.00",
      sales: "18",
    ),
    BestSellingProductsRow(product: "Bicycle", sold: "\$316.00", sales: "25"),
    BestSellingProductsRow(
      product: "Sports Shoes",
      sold: "\$316.00",
      sales: "10",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("E-Commerce Dashboard").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Congratulations tspaja",
                subtitle: "Best seller of the month",
                trailing: [
                  OutlineButton(
                    onPressed: () {},
                    child: const Text("View Sales"),
                  ),
                ],
                children: [
                  const Text("\$15,231.89").semiBold,
                  const SizedBox(height: 4),
                  const Text("+65% from last month").muted.small,
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Monthly recurring revenue",
                subtitle: "",
                trailing: [const Text("+6.1%").muted.small],
                children: [const Text("\$34.1K").semiBold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Users",
                subtitle: "",
                trailing: [const Text("+19.2%").muted.small],
                children: [const Text("500.1K").semiBold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "User growth",
                subtitle: "",
                trailing: [const Text("-1.2% from last month").muted.small],
                children: [const Text("11.3%").semiBold],
              ),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Total Revenue",
                subtitle: "Income in the last 28 days",
                trailing: [
                  OutlinedContainer(
                    borderColor: Theme.of(context).colorScheme.border,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text("DESKTOP").muted.small,
                            const Text("24,828").large.bold,
                          ],
                        ),
                        Column(
                          children: [
                            const Text("MOBILE").muted.small,
                            const Text("25,010").large.bold,
                          ],
                        ),
                      ],
                    ).gap(8),
                  ),
                ],
                children: [BarChartSample2()],
              ),
            ),
            Expanded(
              flex: 2,
              child: CardWidget(
                title: "Returning Rate",
                subtitle: "\$42,379",
                trailing: [
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
                children: [const SizedBox(height: 32), LineChartSample1()],
              ),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: CardWidget(
                title: "Sales by Location",
                subtitle: "Income in the last 28 days",
                trailing: [
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
                children: [
                  Row(
                    children: [
                      const Text("Canada"),
                      const Spacer(),
                      const Text("85%"),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: Progress(progress: 85, min: 0, max: 100),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("Greenland"),
                      const Spacer(),
                      const Text("80%"),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: Progress(progress: 80, min: 0, max: 100),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("Russia"),
                      const Spacer(),
                      const Text("63%"),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: Progress(progress: 63, min: 0, max: 100),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("China"),
                      const Spacer(),
                      const Text("60%"),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: Progress(progress: 60, min: 0, max: 100),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("Australia"),
                      const Spacer(),
                      const Text("45%"),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: Progress(progress: 45, min: 0, max: 100),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("Greece"),
                      const Spacer(),
                      const Text("40%"),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: Progress(progress: 40, min: 0, max: 100),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Store Visits by Source",
                subtitle: "",
                children: [PieChartSample()],
              ),
            ),
            Expanded(
              flex: 2,
              child: CardWidget(
                title: "Customer Reviews",
                subtitle: "Based on 5,500 verified purchases",
                trailing: [
                  OutlineButton(
                    onPressed: () {},
                    trailing: const Icon(LucideIcons.chevronRight),
                    child: const Text("View All"),
                  ),
                ],
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      const Text("5"),
                      const Icon(LucideIcons.star, size: 14),
                      Expanded(
                        child: Progress(
                          progress: 4000,
                          min: 0,
                          max: 5000,
                          color: Colors.green,
                        ),
                      ),
                      const Text("4000"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Text("4"),
                      const Icon(LucideIcons.star, size: 14),
                      Expanded(
                        child: Progress(
                          progress: 2100,
                          min: 0,
                          max: 5000,
                          color: Colors.teal,
                        ),
                      ),
                      const Text("2100"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Text("3"),
                      const Icon(LucideIcons.star, size: 14),
                      Expanded(
                        child: Progress(
                          progress: 800,
                          min: 0,
                          max: 5000,
                          color: Colors.yellow,
                        ),
                      ),
                      const Text("800"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Text("2"),
                      const Icon(LucideIcons.star, size: 14),
                      Expanded(
                        child: Progress(
                          progress: 631,
                          min: 0,
                          max: 5000,
                          color: Colors.orange,
                        ),
                      ),
                      const Text("631"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Text("1"),
                      const Icon(LucideIcons.star, size: 14),
                      Expanded(
                        child: Progress(
                          progress: 344,
                          min: 0,
                          max: 5000,
                          color: Colors.red,
                        ),
                      ),
                      const Text("344"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: CardWidget(
                title: "Recent Orders",
                subtitle: "",
                trailing: [
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
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      placeholder: const Text("Filter orders..."),
                    ),
                  ),

                  const SizedBox(height: 16),

                  TableWidget(
                    columnWidths: {
                      0: FixedTableSize(48),
                      1: FixedTableSize(150),
                      2: FixedTableSize(140),
                    },
                    hasCheckbox: false,
                    headerChildren: [
                      _buildHeaderCell("ID"),
                      _buildHeaderCell("Customer"),
                      _buildHeaderCell("Product"),
                      _buildHeaderCell("Amount"),
                      _buildHeaderCell("Status"),
                      _buildHeaderCell("Action", true),
                    ],
                    bodyChildren: [
                      ...recentOrders.map(
                        (row) => _buildRecentOrdersRow(context, row),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: CardWidget(
                title: "Best Selling Products",
                subtitle: "",
                trailing: [
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
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      placeholder: const Text("Filter products..."),
                    ),
                  ),

                  const SizedBox(height: 16),

                  TableWidget(
                    columnWidths: {
                      0: FixedTableSize(170),
                      1: FixedTableSize(150),
                      2: FixedTableSize(140),
                    },
                    hasCheckbox: false,
                    headerChildren: [
                      _buildHeaderCell("Product"),
                      _buildHeaderCell("Sold"),
                      _buildHeaderCell("Sales"),
                      _buildHeaderCell("Action", true),
                    ],
                    bodyChildren: [
                      ...bestSellingProducts.map(
                        (row) => _buildBestSellingProdutsRow(context, row),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
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

  TableCell _actionCell(BuildContext context) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.centerRight,
        child: Builder(
          builder: (context) {
            return IconButton.ghost(
              onPressed: () {
                showDropdown(
                  context: context,
                  builder: (context) {
                    return const DropdownMenu(
                      children: [
                        MenuButton(child: Text("Copy order ID")),
                        MenuButton(child: Text("View customer")),
                        MenuButton(child: Text("View payment details")),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(LucideIcons.ellipsisVertical),
            );
          },
        ),
      ),
    );
  }

  TableRow _buildRecentOrdersRow(BuildContext context, RecentOrderRow row) {
    return TableRow(
      cells: [
        _buildCell(row.id),
        _buildCell(row.customer),
        _buildCell(row.product),
        _buildCell(row.amount),
        _buildCell(row.status),
        _actionCell(context),
      ],
    );
  }

  TableRow _buildBestSellingProdutsRow(
    BuildContext context,
    BestSellingProductsRow row,
  ) {
    return TableRow(
      cells: [
        _buildCell(row.product),
        _buildCell(row.sold),
        _buildCell(row.sales),
        _actionCell(context),
      ],
    );
  }
}

class RecentOrderRow {
  final String id;
  final String customer;
  final String product;
  final String amount;
  final String status;

  RecentOrderRow({
    required this.id,
    required this.customer,
    required this.product,
    required this.amount,
    required this.status,
  });
}

class BestSellingProductsRow {
  final String product;
  final String sold;
  final String sales;

  BestSellingProductsRow({
    required this.product,
    required this.sold,
    required this.sales,
  });
}

class BarChartSample2 extends StatefulWidget {
  final Color leftBarColor = Colors.black;
  final Color rightBarColor = Colors.gray;
  final Color avgColor = Colors.orange;

  const BarChartSample2({super.key});

  @override
  State<BarChartSample2> createState() => _BarChartSample2State();
}

class _BarChartSample2State extends State<BarChartSample2> {
  final double width = 20;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: BarChart(
              BarChartData(
                maxY: 20,
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: ((group) {
                      return Colors.gray;
                    }),
                    getTooltipItem: (a, b, c, d) => null,
                  ),
                  touchCallback: (FlTouchEvent event, response) {
                    if (response == null || response.spot == null) {
                      setState(() {
                        touchedGroupIndex = -1;
                        showingBarGroups = List.of(rawBarGroups);
                      });
                      return;
                    }

                    touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                    setState(() {
                      if (!event.isInterestedForInteractions) {
                        touchedGroupIndex = -1;
                        showingBarGroups = List.of(rawBarGroups);
                        return;
                      }
                      showingBarGroups = List.of(rawBarGroups);
                      if (touchedGroupIndex != -1) {
                        var sum = 0.0;
                        for (final rod
                            in showingBarGroups[touchedGroupIndex].barRods) {
                          sum += rod.toY;
                        }
                        final avg =
                            sum /
                            showingBarGroups[touchedGroupIndex].barRods.length;

                        showingBarGroups[touchedGroupIndex] =
                            showingBarGroups[touchedGroupIndex].copyWith(
                              barRods: showingBarGroups[touchedGroupIndex]
                                  .barRods
                                  .map((rod) {
                                    return rod.copyWith(
                                      toY: avg,
                                      color: widget.avgColor,
                                    );
                                  })
                                  .toList(),
                            );
                      }
                    });
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
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 42,
                    ),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: showingBarGroups,
                gridData: const FlGridData(show: false),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      meta: meta,
      space: 16, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(toY: y1, color: widget.leftBarColor, width: width),
        BarChartRodData(toY: y2, color: widget.rightBarColor, width: width),
      ],
    );
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withValues(alpha: 0.4),
        ),
        const SizedBox(width: space),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withValues(alpha: 0.8),
        ),
        const SizedBox(width: space),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withValues(alpha: 1),
        ),
        const SizedBox(width: space),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withValues(alpha: 0.8),
        ),
        const SizedBox(width: space),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withValues(alpha: 0.4),
        ),
      ],
    );
  }
}

class LineChartSample1 extends StatelessWidget {
  const LineChartSample1({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 400),
                FlSpot(1, 300),
                FlSpot(2, 200),
                FlSpot(3, 278),
                FlSpot(4, 189),
                FlSpot(5, 239),
                FlSpot(6, 349),
                FlSpot(7, 400),
                FlSpot(8, 300),
                FlSpot(9, 200),
                FlSpot(10, 278),
                FlSpot(11, 189),
              ],
              color: Colors.gray,
              isCurved: false,
              isStrokeCapRound: true,
              barWidth: 2,
              belowBarData: BarAreaData(show: false),
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 4,
                    color: Colors.gray,
                    strokeColor: Colors.white,
                    strokeWidth: 1,
                  );
                },
              ),
            ),
            LineChartBarData(
              spots: [
                FlSpot(0, 240),
                FlSpot(1, 139),
                FlSpot(2, 400),
                FlSpot(3, 390),
                FlSpot(4, 480),
                FlSpot(5, 380),
                FlSpot(6, 400),
                FlSpot(7, 240),
                FlSpot(8, 139),
                FlSpot(9, 400),
                FlSpot(10, 390),
                FlSpot(11, 480),
              ],
              color: Colors.black,
              isCurved: false,
              isStrokeCapRound: true,
              barWidth: 2,
              belowBarData: BarAreaData(show: false),
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 4,
                    color: Colors.gray,
                    strokeColor: Colors.white,
                    strokeWidth: 1,
                  );
                },
              ),
            ),
          ],
          minY: 0,
          maxY: 400,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(sideTitles: bottomTitles),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    String text = switch (value.toInt()) {
      0 => 'Jan',
      1 => 'Feb',
      2 => 'Mar',
      3 => 'Apr',
      4 => 'May',
      5 => 'Jun',
      6 => 'Jul',
      7 => 'Aug',
      8 => 'Sep',
      9 => 'Oct',
      10 => 'Nov',
      11 => 'Dec',
      _ => '',
    };

    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  SideTitles get bottomTitles => SideTitles(
    showTitles: true,
    reservedSize: 32,
    interval: 1,
    getTitlesWidget: bottomTitleWidgets,
  );
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
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(height: 18),
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
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(color: Colors.blue, text: 'First', isSquare: true),
              SizedBox(height: 4),
              Indicator(color: Colors.yellow, text: 'Second', isSquare: true),
              SizedBox(height: 4),
              Indicator(color: Colors.purple, text: 'Third', isSquare: true),
              SizedBox(height: 4),
              Indicator(color: Colors.green, text: 'Fourth', isSquare: true),
              SizedBox(height: 18),
            ],
          ),
          const SizedBox(width: 28),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      return switch (i) {
        0 => PieChartSectionData(
          color: Colors.blue,
          value: 40,
          title: '40%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        ),
        1 => PieChartSectionData(
          color: Colors.yellow,
          value: 30,
          title: '30%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        ),
        2 => PieChartSectionData(
          color: Colors.purple,
          value: 15,
          title: '15%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        ),
        3 => PieChartSectionData(
          color: Colors.green,
          value: 15,
          title: '15%',
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
