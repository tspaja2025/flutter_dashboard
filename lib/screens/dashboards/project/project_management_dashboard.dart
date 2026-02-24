import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectManagementDashboardScreen extends StatefulWidget {
  const ProjectManagementDashboardScreen({super.key});

  @override
  State<ProjectManagementDashboardScreen> createState() =>
      ProjectManagementDashboardScreenState();
}

class ProjectManagementDashboardScreenState
    extends State<ProjectManagementDashboardScreen> {
  CheckboxState _state = CheckboxState.unchecked;
  int index = 0;
  String? selectedValue;

  List<AvatarWidget> getAvatars() {
    return [
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.red),
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.green),
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.blue),
      Avatar(
        initials: Avatar.getInitials("TS"),
        backgroundColor: Colors.yellow,
      ),
    ];
  }

  final recentProjects = [
    RecentProjectsRow(
      projectName: "Product Development",
      clientName: "Kevin Heal",
      startDate: "24/02/2026",
      deadline: "24/02/2026",
      status: "Active",
      progress: 30,
    ),
    RecentProjectsRow(
      projectName: "New Office Building",
      clientName: "Sarah Johnson",
      startDate: "24/02/2026",
      deadline: "24/02/2026",
      status: "Cancel",
      progress: 60,
    ),
    RecentProjectsRow(
      projectName: "Mobile app design",
      clientName: "Michael Chen",
      startDate: "24/02/2026",
      deadline: "24/02/2026",
      status: "Completed",
      progress: 100,
    ),
    RecentProjectsRow(
      projectName: "Website & Blog",
      clientName: "Emily Rodriguez",
      startDate: "24/02/2026",
      deadline: "24/02/2026",
      status: "Pending",
      progress: 50,
    ),
    RecentProjectsRow(
      projectName: "Marketing Campaign",
      clientName: "David Wilson",
      startDate: "24/02/2026",
      deadline: "24/02/2026",
      status: "Active",
      progress: 45,
    ),
    RecentProjectsRow(
      projectName: "E-commerce Platform",
      clientName: "Jessica Lee",
      startDate: "24/02/2026",
      deadline: "24/02/2026",
      status: "Pending",
      progress: 20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              const Text("Project Management Dashboard").bold().large(),
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
                      const Text("Total Revenue").semiBold(),
                      const SizedBox(height: 4),
                      const Text("+20.1% from last month").muted().small(),

                      const SizedBox(height: 16),

                      const Text("\$45,231.89").x3Large().bold(),
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
                      const Text("Active Projects").semiBold(),
                      const SizedBox(height: 4),
                      const Text("+5.02% from last month").muted().small(),

                      const SizedBox(height: 16),

                      const Text("1.423").x3Large().bold(),
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
                      const Text("New Leads").semiBold(),
                      const SizedBox(height: 4),
                      const Text("-3.58% from last month").muted().small(),

                      const SizedBox(height: 16),

                      const Text("3500").x3Large().bold(),
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
                      const Text("Time Spent").semiBold(),
                      const SizedBox(height: 4),
                      const Text("-3.58% from last month").muted().small(),

                      const SizedBox(height: 16),

                      const Text("168h 40m").x3Large().bold(),
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
                      const Text("Projects Overview").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Total for the last 3 months").muted().small(),

                      const SizedBox(height: 32),

                      SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: LineChart(
                          LineChartData(
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  FlSpot(0, 400),
                                  FlSpot(2, 300),
                                  FlSpot(4, 200),
                                  FlSpot(6, 278),
                                  FlSpot(8, 189),
                                  FlSpot(10, 239),
                                  FlSpot(12, 349),
                                ],
                                color: Colors.gray,
                                isCurved: false,
                                isStrokeCapRound: true,
                                barWidth: 2,
                                belowBarData: BarAreaData(show: false),
                                dotData: FlDotData(
                                  show: true,
                                  getDotPainter:
                                      (spot, percent, barData, index) {
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
                                  FlSpot(2, 139),
                                  FlSpot(4, 400),
                                  FlSpot(6, 390),
                                  FlSpot(8, 480),
                                  FlSpot(10, 380),
                                  FlSpot(12, 400),
                                ],
                                color: Colors.black,
                                isCurved: false,
                                isStrokeCapRound: true,
                                barWidth: 2,
                                belowBarData: BarAreaData(show: false),
                                dotData: FlDotData(
                                  show: true,
                                  getDotPainter:
                                      (spot, percent, barData, index) {
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
                            titlesData: FlTitlesData(show: false),
                            gridData: FlGridData(show: false),
                            borderData: FlBorderData(show: false),
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
                      const Text("Professionals").muted().small(),
                      const SizedBox(height: 4),
                      const Text("357").semiBold(),

                      const SizedBox(height: 16),

                      const Text("Today's heroes").semiBold().small(),
                      const SizedBox(height: 4),
                      AvatarGroup.toLeft(children: getAvatars()),
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
                      Row(
                        children: [
                          const Text("Reminder").semiBold(),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            leading: const Icon(LucideIcons.plus),
                            child: const Text("Set reminder"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
                        children: [
                          Expanded(
                            child: Card(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  const Text("Low").semiBold(),

                                  const SizedBox(height: 16),

                                  const Text("Today, 12:30").muted().small(),

                                  const SizedBox(height: 16),

                                  const Text(
                                    "Create a design training for beginners.",
                                  ).small(),

                                  const SizedBox(height: 16),

                                  const Chip(child: Text("Design Education")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  const Text("Medium").semiBold(),

                                  const SizedBox(height: 16),

                                  const Text("Today, 10:00").muted().small(),

                                  const SizedBox(height: 16),

                                  const Text(
                                    "Have a meeting with the new design team.",
                                  ).small(),

                                  const SizedBox(height: 16),

                                  const Chip(child: Text("Meeting")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  const Text("High").semiBold(),

                                  const SizedBox(height: 16),

                                  const Text("Tomorrow, 16:30").muted().small(),

                                  const SizedBox(height: 16),

                                  const Text(
                                    "Respond to customer support emails.",
                                  ).small(),

                                  const SizedBox(height: 16),

                                  const Chip(child: Text("Customer Support")),
                                ],
                              ),
                            ),
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
                      const Text("Achievement by Year").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "You completed more projects per day on average this year than last year.",
                      ).muted().small(),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("57").large().semiBold(),
                          const Text("projects").muted().small(),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: double.infinity,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: .circular(4),
                        ),
                        alignment: .centerLeft,
                        padding: const .symmetric(horizontal: 8),
                        child: const Text(
                          "2026",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("29").large().semiBold(),
                          const Text("projects").muted().small(),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: double.infinity,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.gray,
                          borderRadius: .circular(4),
                        ),
                        alignment: .centerLeft,
                        padding: const .symmetric(horizontal: 8),
                        child: const Text(
                          "2025",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("35").large().semiBold(),
                          const Text("projects").muted().small(),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: double.infinity,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.gray.shade800,
                          borderRadius: .circular(4),
                        ),
                        alignment: .centerLeft,
                        padding: const .symmetric(horizontal: 8),
                        child: const Text(
                          "2024",
                          style: TextStyle(color: Colors.white),
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
                      const Text("January - June 2026").muted().small(),
                      const SizedBox(height: 4),
                      const Text("Project Efficiency").semiBold(),

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
                      const Text("Recent Projects").semiBold(),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextField(
                              placeholder: const Text("Filter projects..."),
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
                                selectedValue = value;
                              });
                            },
                            value: selectedValue,
                            placeholder: const Text("View"),
                            popup: const SelectPopup(
                              items: SelectItemList(
                                children: [
                                  SelectItemButton(
                                    value: "Name",
                                    child: Text("Name"),
                                  ),
                                  SelectItemButton(
                                    value: "Client",
                                    child: Text("Client"),
                                  ),
                                  SelectItemButton(
                                    value: "Date",
                                    child: Text("Date"),
                                  ),
                                  SelectItemButton(
                                    value: "Deadline",
                                    child: Text("Deadline"),
                                  ),
                                  SelectItemButton(
                                    value: "Status",
                                    child: Text("Status"),
                                  ),
                                  SelectItemButton(
                                    value: "Progress",
                                    child: Text("Progress"),
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
                          2: FixedTableSize(220),
                        },
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              TableCell(
                                child: Container(
                                  padding: const .all(8),
                                  child: Checkbox(
                                    state: _state,
                                    onChanged: (state) {
                                      setState(() {
                                        _state = state;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              _buildHeaderCell("Customer"),
                              _buildHeaderCell("Email"),
                              _buildHeaderCell("Amount"),
                              _buildHeaderCell("Status"),
                              _buildHeaderCell("Action", true),
                            ],
                          ),

                          // Body rows
                          ...recentProjects.map(
                            (row) => _buildDataRow(context, row),
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

  TableCell _checkboxCell() {
    return TableCell(
      child: Padding(
        padding: const .all(8),
        child: Checkbox(
          state: _state,
          onChanged: (state) {
            setState(() {
              _state = state;
            });
          },
        ),
      ),
    );
  }

  TableCell _actionCell(BuildContext context) {
    return TableCell(
      child: Container(
        padding: const .symmetric(horizontal: 8),
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
                        MenuButton(child: Text("View project")),
                        MenuButton(child: Text("Members")),
                        MenuButton(child: Text("Delete")),
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

  TableCell _progressCell(double progress) {
    return TableCell(
      child: Container(
        padding: const .all(8),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 8,
              child: Progress(progress: progress, min: 0, max: 100),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildDataRow(BuildContext context, RecentProjectsRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.projectName),
        _buildCell(row.clientName),
        _buildCell(row.startDate),
        _buildCell(row.deadline),
        _buildCell(row.status),
        _progressCell(row.progress),
        _actionCell(context),
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

class RecentProjectsRow {
  final String projectName;
  final String clientName;
  final String startDate;
  final String deadline;
  final String status;
  final double progress;

  RecentProjectsRow({
    required this.projectName,
    required this.clientName,
    required this.startDate,
    required this.deadline,
    required this.status,
    required this.progress,
  });
}
