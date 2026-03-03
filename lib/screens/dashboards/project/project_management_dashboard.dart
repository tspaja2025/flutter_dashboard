import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectManagementDashboardScreen extends StatefulWidget {
  const ProjectManagementDashboardScreen({super.key});

  @override
  State<ProjectManagementDashboardScreen> createState() =>
      _ProjectManagementDashboardScreenState();
}

class _ProjectManagementDashboardScreenState
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Project Management Dashboard").bold.large]),

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

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Total Revenue",
                subtitle: "+20.1% from last month",
                children: [const Text("\$45,231.89").xLarge.bold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Active Projects",
                subtitle: "+5.02% from last month",
                children: [const Text("1.423").xLarge.bold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "New Leads",
                subtitle: "-3.58% from last month",
                children: [const Text("3500").xLarge.bold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Time Spent",
                subtitle: "-3.58% from last month",
                children: [const Text("168h 40m").xLarge.bold],
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
                title: "Projects Overview",
                subtitle: "Total for the last 3 months",
                children: [
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
                        titlesData: FlTitlesData(show: false),
                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Professionals",
                subtitle: "357",
                children: [
                  const Text("Today's heroes").semiBold().small(),
                  const SizedBox(height: 4),
                  AvatarGroup.toLeft(children: getAvatars()),
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
                title: "Reminder",
                subtitle: "",
                trailing: [
                  OutlineButton(
                    onPressed: () {},
                    leading: const Icon(LucideIcons.plus),
                    child: const Text("Set reminder"),
                  ),
                ],
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CardWidget(
                          title: "Low",
                          subtitle: "Today, 12:30",
                          children: [
                            const Text(
                              "Create a design training for beginners.",
                            ).small,

                            const SizedBox(height: 16),

                            const Chip(child: Text("Design Education")),
                          ],
                        ),
                      ),
                      Expanded(
                        child: CardWidget(
                          title: "Medium",
                          subtitle: "Today, 10:00",
                          children: [
                            const Text(
                              "Have a meeting with the new design team.",
                            ).small,

                            const SizedBox(height: 16),

                            const Chip(child: Text("Meeting")),
                          ],
                        ),
                      ),
                      Expanded(
                        child: CardWidget(
                          title: "High",
                          subtitle: "Tomorrow, 16:30",
                          children: [
                            const Text(
                              "Respond to customer support emails.",
                            ).small,

                            const SizedBox(height: 16),

                            const Chip(child: Text("Customer Support")),
                          ],
                        ),
                      ),
                    ],
                  ).gap(16),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Achievement by year",
                subtitle:
                    "You completed more projects this year than last year.",
                children: [
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
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "2026",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("29").large.semiBold,
                      const Text("projects").muted.small,
                    ],
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.gray,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "2025",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("35").large.semiBold,
                      const Text("projects").muted.small,
                    ],
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.gray.shade800,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: .centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "2024",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Project Efficiency",
                subtitle: "January - June 2026",
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
                title: "Recent Projects",
                subtitle: "",
                trailing: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      placeholder: const Text("Filter projects..."),
                    ),
                  ),
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
                          SelectItemButton(value: "Name", child: Text("Name")),
                          SelectItemButton(
                            value: "Client",
                            child: Text("Client"),
                          ),
                          SelectItemButton(value: "Date", child: Text("Date")),
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
                children: [
                  TableWidget(
                    columnWidths: {
                      0: FixedTableSize(48),
                      2: FixedTableSize(220),
                    },
                    hasCheckbox: true,
                    headerChildren: [
                      _buildHeaderCell("Customer"),
                      _buildHeaderCell("Email"),
                      _buildHeaderCell("Amount"),
                      _buildHeaderCell("Status"),
                      _buildHeaderCell("Action", true),
                    ],
                    bodyChildren: [
                      ...recentProjects.map(
                        (row) => _buildDataRow(context, row),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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

  TableCell _checkboxCell() {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8),
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
        padding: const EdgeInsets.all(8),
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
