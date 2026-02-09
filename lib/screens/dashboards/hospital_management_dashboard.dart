import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HospitalManagementDashboardScreen extends StatefulWidget {
  const HospitalManagementDashboardScreen({super.key});

  @override
  State<HospitalManagementDashboardScreen> createState() =>
      HospitalManagementDashboardScreenState();
}

class HospitalManagementDashboardScreenState
    extends State<HospitalManagementDashboardScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              const Text("Hospital Management Dashboard").bold().large(),
            ],
          ),

          const SizedBox(height: 16),

          Tabs(
            index: index,
            children: const [
              TabItem(child: Text("Overview")),
              TabItem(child: Text("Reports")),
              TabItem(child: Text("Activites")),
            ],
            onChanged: (int value) {
              setState(() {
                index = value;
              });
            },
          ),

          const SizedBox(height: 16),

          IndexedStack(
            index: index,
            children: [
              Column(
                children: [
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
                              const Text("Total Appointments").semiBold(),

                              const SizedBox(height: 16),

                              const Text("2350").large().bold(),
                              const Text(
                                "+20.1 from last month",
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
                              const Text("New Patients").semiBold(),

                              const SizedBox(height: 16),

                              const Text("145").large().bold(),
                              const Text(
                                "+180.1 from last month",
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
                              const Text("Operations").semiBold(),

                              const SizedBox(height: 16),

                              const Text("89").large().bold(),
                              const Text("-19 from last month").muted().small(),
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
                              const Text("Total Revenue").semiBold(),

                              const SizedBox(height: 16),

                              const Text("\$9583").large().bold(),
                              const Text(
                                "+20.1 from last month",
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
                              const Text("Patient Visits by Gender").semiBold(),

                              const SizedBox(height: 16),

                              SizedBox(
                                width: double.infinity,
                                height: 300,
                                child: LineChartSample(),
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
                              const Text("Patients by Department").semiBold(),

                              SizedBox(
                                width: double.infinity,
                                height: 300,
                                child: PieChartSample(),
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
                        flex: 2,
                        child: Card(
                          padding: const .all(16),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Upcoming Appointments").semiBold(),

                              const SizedBox(height: 16),

                              Table(
                                columnWidths: {
                                  0: FixedTableSize(185),
                                  1: FixedTableSize(150),
                                },
                                defaultRowHeight: FixedTableSize(48),

                                rows: [
                                  // Header row
                                  TableRow(
                                    cells: [
                                      _buildHeaderCell("Patient"),
                                      _buildHeaderCell("Date"),
                                      _buildHeaderCell("Time"),
                                      _buildHeaderCell("Doctor"),
                                      _buildHeaderCell("Department"),
                                      _buildHeaderCell("Action", true),
                                    ],
                                  ),

                                  // Body rows
                                  TableRow(
                                    cells: [
                                      _buildCell("John Swift"),
                                      _buildCell("2026-02-09"),
                                      _buildCell("9:07"),
                                      _buildCell("Dr.Smith"),
                                      _buildCell("Cardiology"),
                                      TableCell(
                                        child: Container(
                                          padding: const .symmetric(
                                            horizontal: 8,
                                          ),
                                          alignment: .centerRight,
                                          child: Builder(
                                            builder: (context) {
                                              return IconButton.ghost(
                                                onPressed: () {
                                                  showDropdown(
                                                    context: context,
                                                    builder: (context) {
                                                      return const DropdownMenu(
                                                        children: [
                                                          MenuButton(
                                                            child: Text("View"),
                                                          ),
                                                          MenuButton(
                                                            child: Text("Edit"),
                                                          ),
                                                          MenuButton(
                                                            child: Text(
                                                              "Delete",
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  LucideIcons.ellipsisVertical,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  TableRow(
                                    cells: [
                                      _buildCell("Jane Swift"),
                                      _buildCell("2026-02-09"),
                                      _buildCell("9:07"),
                                      _buildCell("Dr.Johnson"),
                                      _buildCell("Neurology"),
                                      TableCell(
                                        child: Container(
                                          padding: const .symmetric(
                                            horizontal: 8,
                                          ),
                                          alignment: .centerRight,
                                          child: Builder(
                                            builder: (context) {
                                              return IconButton.ghost(
                                                onPressed: () {
                                                  showDropdown(
                                                    context: context,
                                                    builder: (context) {
                                                      return const DropdownMenu(
                                                        children: [
                                                          MenuButton(
                                                            child: Text("View"),
                                                          ),
                                                          MenuButton(
                                                            child: Text("Edit"),
                                                          ),
                                                          MenuButton(
                                                            child: Text(
                                                              "Delete",
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  LucideIcons.ellipsisVertical,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  TableRow(
                                    cells: [
                                      _buildCell("Bob Wilson"),
                                      _buildCell("2026-02-09"),
                                      _buildCell("9:07"),
                                      _buildCell("Dr.Brown"),
                                      _buildCell("Oncology"),
                                      TableCell(
                                        child: Container(
                                          padding: const .symmetric(
                                            horizontal: 8,
                                          ),
                                          alignment: .centerRight,
                                          child: Builder(
                                            builder: (context) {
                                              return IconButton.ghost(
                                                onPressed: () {
                                                  showDropdown(
                                                    context: context,
                                                    builder: (context) {
                                                      return const DropdownMenu(
                                                        children: [
                                                          MenuButton(
                                                            child: Text("View"),
                                                          ),
                                                          MenuButton(
                                                            child: Text("Edit"),
                                                          ),
                                                          MenuButton(
                                                            child: Text(
                                                              "Delete",
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  LucideIcons.ellipsisVertical,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  TableRow(
                                    cells: [
                                      _buildCell("Alice Taylor"),
                                      _buildCell("2026-02-09"),
                                      _buildCell("9:07"),
                                      _buildCell("Dr.Davis"),
                                      _buildCell("Pediatrics"),
                                      TableCell(
                                        child: Container(
                                          padding: const .symmetric(
                                            horizontal: 8,
                                          ),
                                          alignment: .centerRight,
                                          child: Builder(
                                            builder: (context) {
                                              return IconButton.ghost(
                                                onPressed: () {
                                                  showDropdown(
                                                    context: context,
                                                    builder: (context) {
                                                      return const DropdownMenu(
                                                        children: [
                                                          MenuButton(
                                                            child: Text("View"),
                                                          ),
                                                          MenuButton(
                                                            child: Text("Edit"),
                                                          ),
                                                          MenuButton(
                                                            child: Text(
                                                              "Delete",
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  LucideIcons.ellipsisVertical,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  TableRow(
                                    cells: [
                                      _buildCell("Bill Galon"),
                                      _buildCell("2026-02-09"),
                                      _buildCell("9:07"),
                                      _buildCell("Dr.Karen"),
                                      _buildCell("Neurology"),
                                      TableCell(
                                        child: Container(
                                          padding: const .symmetric(
                                            horizontal: 8,
                                          ),
                                          alignment: .centerRight,
                                          child: Builder(
                                            builder: (context) {
                                              return IconButton.ghost(
                                                onPressed: () {
                                                  showDropdown(
                                                    context: context,
                                                    builder: (context) {
                                                      return const DropdownMenu(
                                                        children: [
                                                          MenuButton(
                                                            child: Text("View"),
                                                          ),
                                                          MenuButton(
                                                            child: Text("Edit"),
                                                          ),
                                                          MenuButton(
                                                            child: Text(
                                                              "Delete",
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  LucideIcons.ellipsisVertical,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  TableRow(
                                    cells: [
                                      _buildCell("Mike Dall"),
                                      _buildCell("2026-02-09"),
                                      _buildCell("9:07"),
                                      _buildCell("Dr.Karen"),
                                      _buildCell("Cardiology"),
                                      TableCell(
                                        child: Container(
                                          padding: const .symmetric(
                                            horizontal: 8,
                                          ),
                                          alignment: .centerRight,
                                          child: Builder(
                                            builder: (context) {
                                              return IconButton.ghost(
                                                onPressed: () {
                                                  showDropdown(
                                                    context: context,
                                                    builder: (context) {
                                                      return const DropdownMenu(
                                                        children: [
                                                          MenuButton(
                                                            child: Text("View"),
                                                          ),
                                                          MenuButton(
                                                            child: Text("Edit"),
                                                          ),
                                                          MenuButton(
                                                            child: Text(
                                                              "Delete",
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  LucideIcons.ellipsisVertical,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  TableRow(
                                    cells: [
                                      _buildCell("Bob Wilson"),
                                      _buildCell("2026-02-09"),
                                      _buildCell("9:07"),
                                      _buildCell("Dr.Brown"),
                                      _buildCell("Oncology"),
                                      TableCell(
                                        child: Container(
                                          padding: const .symmetric(
                                            horizontal: 8,
                                          ),
                                          alignment: .centerRight,
                                          child: Builder(
                                            builder: (context) {
                                              return IconButton.ghost(
                                                onPressed: () {
                                                  showDropdown(
                                                    context: context,
                                                    builder: (context) {
                                                      return const DropdownMenu(
                                                        children: [
                                                          MenuButton(
                                                            child: Text("View"),
                                                          ),
                                                          MenuButton(
                                                            child: Text("Edit"),
                                                          ),
                                                          MenuButton(
                                                            child: Text(
                                                              "Delete",
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: const Icon(
                                                  LucideIcons.ellipsisVertical,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
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
                              Row(
                                children: [
                                  const Text(
                                    "Patients with Last Procedure",
                                  ).semiBold(),
                                  const Spacer(),
                                  OutlineButton(
                                    onPressed: () {},
                                    trailing: const Icon(
                                      LucideIcons.chevronRight,
                                    ),
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
                                      const Text("Olivia Martin"),
                                      const Text("olivia.martin@email.com"),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: .end,
                                    children: [
                                      const Text("Appendectory"),
                                      const Text("2026-02-09"),
                                    ],
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
                                      const Text("Jackson Lee"),
                                      const Text("jackson.lee@email.com"),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: .end,
                                    children: [
                                      const Text("Knee Arthroscopy"),
                                      const Text("2026-02-09"),
                                    ],
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
                                      const Text("Isabella Nguyen"),
                                      const Text("isabell.nguyen@email.com"),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: .end,
                                    children: [
                                      const Text("Cataract Surgery"),
                                      const Text("2026-02-09"),
                                    ],
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
                                      const Text("William Chen"),
                                      const Text("william.chen@email.com"),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: .end,
                                    children: [
                                      const Text("Colonoscopy"),
                                      const Text("2026-02-09"),
                                    ],
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
                                      const Text("Can Jackson"),
                                      const Text("can.jackson@email.com"),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment: .end,
                                    children: [
                                      const Text("Colonoscopy"),
                                      const Text("2026-02-09"),
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
                            children: [CalendarWidget()],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          padding: const .all(16),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Notes").semiBold(),

                              const SizedBox(height: 16),

                              Row(
                                children: [
                                  const Text("Dr.Smith's surgery at 10 AM"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text("Staff meeting at 2 PM"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text("New patient orientation"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text("Inventory check"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text("Staff meeting at 3 PM"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text("Dr.Smith's surgery at 10 AM"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text("Annual health checkup"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Text("Dental examination at 4 PM"),
                                  const Spacer(),
                                  const Text("Feb 09, 2026"),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Divider(),
                              const SizedBox(height: 4),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(placeholder: const Text("Filter sales")),
                  ),
                ],
              ),
              Column(children: [SizedBox()]),
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

class LineChartSample extends StatelessWidget {
  const LineChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (touchedSpot) =>
                Colors.blue.withValues(alpha: 0.8),
          ),
        ),
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 32,
              interval: 1,
              getTitlesWidget: bottomTitleWidgets,
            ),
          ),
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
        borderData: FlBorderData(show: false),
        lineBarsData: [
          // 1
          LineChartBarData(
            isCurved: true,
            color: Colors.black,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: const [
              FlSpot(1, 1),
              FlSpot(3, 1.5),
              FlSpot(5, 1.4),
              FlSpot(7, 3.4),
              // FlSpot(10, 2),
              // FlSpot(12, 2.2),
              // FlSpot(13, 1.8),
            ],
          ),
          // 2
          LineChartBarData(
            isCurved: true,
            color: Colors.gray.shade200,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: const [
              FlSpot(1, 1),
              FlSpot(3, 4),
              FlSpot(5, 1.8),
              FlSpot(7, 5),
              // FlSpot(10, 2),
              // FlSpot(12, 2.2),
              // FlSpot(13, 1.8),
            ],
          ),
          // 3
          LineChartBarData(
            isCurved: true,
            color: Colors.gray.shade400,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: const [
              FlSpot(1, 1),
              FlSpot(3, 2.8),
              FlSpot(5, 1.9),
              FlSpot(7, 3),
              // FlSpot(10, 2),
              // FlSpot(12, 2.5),
              // FlSpot(13, 1.2),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      1 => "Jan",
      2 => "Feb",
      3 => "Mar",
      4 => "Apr",
      5 => "May",
      6 => "Jun",
      7 => "Jul",
      _ => "",
    };

    return SideTitleWidget(
      meta: meta,
      space: 10,
      child: Text(
        text,
        style: const TextStyle(fontWeight: .bold, fontSize: 16),
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
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          startDegreeOffset: 180,
          borderData: FlBorderData(show: false),
          sectionsSpace: 1,
          centerSpaceRadius: 0,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (index) {
      final isTouched = index == touchedIndex;
      const color0 = Colors.blue;
      const color1 = Colors.yellow;
      const color2 = Colors.pink;
      const color3 = Colors.green;

      return switch (index) {
        0 => PieChartSectionData(
          color: color0,
          value: 25,
          title: "",
          radius: 80,
          titlePositionPercentageOffset: 0.55,
          borderSide: isTouched
              ? const BorderSide(color: Colors.white, width: 6)
              : BorderSide(color: Colors.white.withValues(alpha: 0)),
        ),
        1 => PieChartSectionData(
          color: color1,
          value: 25,
          title: "",
          radius: 65,
          titlePositionPercentageOffset: 0.55,
          borderSide: isTouched
              ? const BorderSide(color: Colors.white, width: 6)
              : BorderSide(color: Colors.white.withValues(alpha: 0)),
        ),
        2 => PieChartSectionData(
          color: color2,
          value: 25,
          title: "",
          radius: 60,
          titlePositionPercentageOffset: 0.55,
          borderSide: isTouched
              ? const BorderSide(color: Colors.white, width: 6)
              : BorderSide(color: Colors.white.withValues(alpha: 0)),
        ),
        3 => PieChartSectionData(
          color: color3,
          value: 25,
          title: "",
          radius: 70,
          titlePositionPercentageOffset: 0.55,
          borderSide: isTouched
              ? const BorderSide(color: Colors.white, width: 6)
              : BorderSide(color: Colors.white.withValues(alpha: 0)),
        ),
        _ => throw StateError("Invalid"),
      };
    });
  }
}

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton.outline(
              onPressed: () {},
              icon: const Icon(LucideIcons.chevronLeft),
            ),
            const Spacer(),
            const Text("February"),
            const Spacer(),
            IconButton.outline(
              onPressed: () {},
              icon: const Icon(LucideIcons.chevronRight),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            const Text("Su"),
            const Text("Mo"),
            const Text("Tu"),
            const Text("We"),
            const Text("Th"),
            const Text("Fr"),
            const Text("Sa"),
          ],
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            ...List.generate(
              7,
              (index) => OutlinedContainer(
                width: 48,
                height: 48,
                backgroundColor: Colors.gray,
                child: Text("${index + 1}").center(),
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            ...List.generate(
              7,
              (index) => OutlinedContainer(
                width: 48,
                height: 48,
                backgroundColor: Colors.gray,
                child: Text("${index + 8}").center(),
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            ...List.generate(
              7,
              (index) => OutlinedContainer(
                width: 48,
                height: 48,
                backgroundColor: Colors.gray,
                child: Text("${index + 15}").center(),
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            ...List.generate(
              7,
              (index) => OutlinedContainer(
                width: 48,
                height: 48,
                backgroundColor: Colors.gray,
                child: Text("${index + 22}").center(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
