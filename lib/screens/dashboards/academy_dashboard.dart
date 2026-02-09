import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AcademyDashboardScreen extends StatelessWidget {
  const AcademyDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Academy Dashboard").bold().large()]),

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
                      const Text("Hi, Tspaja").x3Large().semiBold(),

                      const SizedBox(height: 16),

                      const Text(
                        "What do you want to learn today with your partner?",
                      ).x3Large(),

                      const SizedBox(height: 16),

                      const Text(
                        "Discover courses, track progress, and achieve your learning goods seamlessly.",
                      ),

                      const SizedBox(height: 16),

                      PrimaryButton(
                        onPressed: () {},
                        child: const Text("Explore Courses"),
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
                          const Text("Learning Path").semiBold(),
                          const Spacer(),
                          const Icon(LucideIcons.gitBranch),
                        ],
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Full-Stack Developer").large().bold(),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              height: 8,
                              child: Progress(progress: 40, min: 0, max: 100),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "4 of 10 modules completed",
                            ).muted().small(),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Full-Stack Developer").large().bold(),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              height: 8,
                              child: Progress(progress: 40, min: 0, max: 100),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "4 of 10 modules completed",
                            ).muted().small(),
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
                          const Text("Leaderboard").semiBold(),
                          const Spacer(),
                          IconButton.outline(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.chevronRight),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("1"),
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          const Text("Liam Smith"),
                          const Spacer(),
                          const Chip(child: Text("5000 pts")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("2"),
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          const Text("Emma Brown"),
                          const Spacer(),
                          const Chip(child: Text("4800 pts")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("3"),
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          const Text("Noah Johnson"),
                          const Spacer(),
                          const Chip(child: Text("4600 pts")),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("4"),
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          const Text("Olivia Davis"),
                          const Spacer(),
                          const Chip(child: Text("4400 pts")),
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
                      const Text("Student Overall Success Rate").semiBold(),

                      const SizedBox(height: 16),

                      const Text("88%").large().bold(),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        height: 8,
                        child: Progress(progress: 88, min: 0, max: 100),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text("Previous: 85%"),
                          const Spacer(),
                          const Text("Target: 100%"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Icon(LucideIcons.users),
                          const Text("Total Students"),
                          const Spacer(),
                          const Text("1500").semiBold(),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Icon(LucideIcons.users),
                          const Text("Passing Students"),
                          const Spacer(),
                          const Text("1320").semiBold(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        height: 8,
                        child: Progress(progress: 88, min: 0, max: 100),
                      ),
                      const SizedBox(height: 8),
                      const Text("Previous: 85%"),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                          onPressed: () {},
                          child: const Text("View Details"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Progress Statistics").semiBold(),

                      const SizedBox(height: 16),

                      Center(
                        child: Column(
                          children: [
                            const Text("Total Activity"),
                            const Text("72.5%").x2Large().bold(),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
                        children: [
                          Expanded(
                            child: Progress(progress: 65, min: 0, max: 100),
                          ),
                          Expanded(
                            child: Progress(progress: 50, min: 0, max: 100),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            const Icon(LucideIcons.calendarClock),
                            const Text("30"),
                            const Spacer(),
                            const Text("In Progress"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          spacing: 8,
                          children: [
                            const Icon(LucideIcons.calendarClock),
                            const Text("30"),
                            const Spacer(),
                            const Text("Completed"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Most Activity").semiBold(),

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
                      const Text("Course Progress by Month").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Compared to previous month 50.56%",
                      ).muted().small(),

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
                      Row(
                        children: [
                          const Text("Popular Courses").semiBold(),
                          const Spacer(),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              placeholder: const Text("Search courses..."),
                            ),
                          ),
                        ],
                      ),

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
                              _buildHeaderCell("Course Name"),
                              _buildHeaderCell("Category"),
                              _buildHeaderCell("Score"),
                              _buildHeaderCell("Progress"),
                              _buildHeaderCell("Action", true),
                            ],
                          ),

                          // Body rows
                          TableRow(
                            cells: [
                              _buildCell("Introduction to react"),
                              _buildCell("Web Development"),
                              _buildCell("4.5"),
                              TableCell(
                                child: Container(
                                  padding: const .all(8),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 8,
                                        child: Progress(
                                          progress: 60,
                                          min: 0,
                                          max: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
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
                                                  MenuButton(
                                                    child: Text("View details"),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Download receipt",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Contact customer",
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
                              _buildCell("Introduction to angular"),
                              _buildCell("Data Science"),
                              _buildCell("4.8"),
                              TableCell(
                                child: Container(
                                  padding: const .all(8),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 8,
                                        child: Progress(
                                          progress: 60,
                                          min: 0,
                                          max: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
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
                                                  MenuButton(
                                                    child: Text("View details"),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Download receipt",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Contact customer",
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
                              _buildCell("Introduction to vue"),
                              _buildCell("Marketing"),
                              _buildCell("4.2"),
                              TableCell(
                                child: Container(
                                  padding: const .all(8),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 8,
                                        child: Progress(
                                          progress: 60,
                                          min: 0,
                                          max: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
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
                                                  MenuButton(
                                                    child: Text("View details"),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Download receipt",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Contact customer",
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
                              _buildCell("Introduction to python"),
                              _buildCell("Programming"),
                              _buildCell("4.6"),
                              TableCell(
                                child: Container(
                                  padding: const .all(8),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 8,
                                        child: Progress(
                                          progress: 60,
                                          min: 0,
                                          max: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
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
                                                  MenuButton(
                                                    child: Text("View details"),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Download receipt",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Contact customer",
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
                              _buildCell("UX Design Principles"),
                              _buildCell("Design"),
                              _buildCell("4.4"),
                              TableCell(
                                child: Container(
                                  padding: const .all(8),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 8,
                                        child: Progress(
                                          progress: 60,
                                          min: 0,
                                          max: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
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
                                                  MenuButton(
                                                    child: Text("View details"),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Download receipt",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Contact customer",
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
                              _buildCell("Introduction to svelte"),
                              _buildCell("Programming"),
                              _buildCell("4.8"),
                              TableCell(
                                child: Container(
                                  padding: const .all(8),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 8,
                                        child: Progress(
                                          progress: 60,
                                          min: 0,
                                          max: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
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
                                                  MenuButton(
                                                    child: Text("View details"),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Download receipt",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "Contact customer",
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
