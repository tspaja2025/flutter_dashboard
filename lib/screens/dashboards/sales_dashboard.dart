import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SalesDashboardScreen extends StatefulWidget {
  const SalesDashboardScreen({super.key});

  @override
  State<SalesDashboardScreen> createState() => SalesDashboardScreenState();
}

class SalesDashboardScreenState extends State<SalesDashboardScreen> {
  bool _isDesktop = true;
  String? _selectedValue;

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
                            const SizedBox(height: 4),
                            const Text(
                              "+3.6% Compare from last month",
                            ).muted().small(),
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
                            const SizedBox(height: 4),
                            const Text(
                              "+2.5% Compare from last month",
                            ).muted().small(),
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
                            const SizedBox(height: 4),
                            const Text(
                              "-6.0% Compare from last month",
                            ).muted().small(),
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
                            const SizedBox(height: 4),
                            const Text(
                              "+5.0% Compare from last month",
                            ).muted().small(),
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
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Best Selling Product").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "Top-Selling Products at a Glance",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          IconButton.outline(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.chevronRight),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            Avatar(
                              size: 24,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            const Text("Sports Shoes"),
                            const Spacer(),
                            const Text("316 items sold"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            Avatar(
                              size: 24,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            const Text("Black T-Shirt"),
                            const Spacer(),
                            const Text("274 items sold"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            Avatar(
                              size: 24,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            const Text("Jeans"),
                            const Spacer(),
                            const Text("195 items sold"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            Avatar(
                              size: 24,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            const Text("Red Sneakers"),
                            const Spacer(),
                            const Text("402 items sold"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            Avatar(
                              size: 24,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            const Text("Red Scarf"),
                            const Spacer(),
                            const Text("280 items sold"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            Avatar(
                              size: 24,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            const Text("Kitchen Accessory"),
                            const Spacer(),
                            const Text("150 items sold"),
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
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Track Order Status").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "Analyze growth and changes in visitor patterns",
                              ).muted().small(),
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

                      Row(
                        spacing: 16,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("43").large().bold(),
                                const SizedBox(height: 8),
                                const Text("New Order +0.5%"),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: double.infinity,
                                  child: Progress(
                                    progress: 43,
                                    min: 0,
                                    max: 100,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("12").large().bold(),
                                const SizedBox(height: 8),
                                const Text("On Progress -0.3%"),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: double.infinity,
                                  child: Progress(
                                    progress: 12,
                                    min: 0,
                                    max: 100,
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("40").large().bold(),
                                const SizedBox(height: 8),
                                const Text("Completed +0.5%"),
                                const SizedBox(height: 8),

                                SizedBox(
                                  width: double.infinity,
                                  child: Progress(
                                    progress: 40,
                                    min: 0,
                                    max: 100,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("2").large().bold(),
                                const SizedBox(height: 8),
                                const Text("Return -0.5%"),
                                const SizedBox(height: 8),

                                SizedBox(
                                  width: double.infinity,
                                  child: Progress(
                                    progress: 2,
                                    min: 0,
                                    max: 100,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextField(
                              placeholder: const Text("Filter orders..."),
                            ),
                          ),
                          const Spacer(),
                          Select<String>(
                            itemBuilder: (context, item) {
                              return Text(item);
                            },
                            popupConstraints: const BoxConstraints(
                              maxHeight: 300,
                              maxWidth: 200,
                            ),
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                            },
                            value: _selectedValue,
                            placeholder: const Text("Columns"),
                            popup: const SelectPopup(
                              items: SelectItemList(
                                children: [
                                  SelectItemButton(
                                    value: "Id",
                                    child: Text("Id"),
                                  ),
                                  SelectItemButton(
                                    value: "Customer Name",
                                    child: Text("Customer Name"),
                                  ),
                                  SelectItemButton(
                                    value: "Items",
                                    child: Text("Items"),
                                  ),
                                  SelectItemButton(
                                    value: "Amount",
                                    child: Text("Amount"),
                                  ),
                                  SelectItemButton(
                                    value: "Payment Method",
                                    child: Text("Payment Method"),
                                  ),
                                  SelectItemButton(
                                    value: "Status",
                                    child: Text("Status"),
                                  ),
                                ],
                              ),
                            ).call,
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Table(
                        columnWidths: {
                          0: FixedTableSize(48),
                          1: FixedTableSize(200),
                        },
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              _buildHeaderCell("ID"),
                              _buildHeaderCell("Customer Name"),
                              _buildHeaderCell("Qty Items"),
                              _buildHeaderCell("Amount"),
                              _buildHeaderCell("Payment Method"),
                              _buildHeaderCell("Status", true),
                            ],
                          ),

                          // Body rows
                          TableRow(
                            cells: [
                              _buildCell("1"),
                              _buildCell("Kenneth Thompson"),
                              _buildCell("2"),
                              _buildCell("\$316.00"),
                              _buildCell("E-Wallet"),
                              _buildCell("New Order"),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("2"),
                              _buildCell("Abraham Lincoln"),
                              _buildCell("6"),
                              _buildCell("\$242.00"),
                              _buildCell("Bank Transfer"),
                              _buildCell("In Progress"),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("3"),
                              _buildCell("Monserrat Rodriguez"),
                              _buildCell("3"),
                              _buildCell("\$837.00"),
                              _buildCell("E-Wallet"),
                              _buildCell("New Order"),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("4"),
                              _buildCell("Silas Johnson"),
                              _buildCell("15"),
                              _buildCell("\$874.00"),
                              _buildCell("Bank Transfer"),
                              _buildCell("On Hold"),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("5"),
                              _buildCell("Carmella DeVito"),
                              _buildCell("4"),
                              _buildCell("\$721.00"),
                              _buildCell("Credit Card"),
                              _buildCell("Completed"),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("6"),
                              _buildCell("Maria Garcia"),
                              _buildCell("8"),
                              _buildCell("\$529.00"),
                              _buildCell("PayPal"),
                              _buildCell("Completed"),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("0 of 6 row(s) selected."),
                          const Spacer(),
                          IconButton.outline(
                            enabled: false,
                            onPressed: () {},
                            icon: const Icon(LucideIcons.chevronLeft),
                          ),
                          IconButton.outline(
                            enabled: false,
                            onPressed: () {},
                            icon: const Icon(LucideIcons.chevronRight),
                          ),
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
      // showingTooltipIndicators: [0],
    ),
  );
}

class ChartData {
  final double value;
  final String label;
  final Color? color;

  const ChartData({required this.value, required this.label, this.color});
}
