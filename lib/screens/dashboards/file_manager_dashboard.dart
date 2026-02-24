import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class FileManagerDashboardScreen extends StatefulWidget {
  const FileManagerDashboardScreen({super.key});

  @override
  State<FileManagerDashboardScreen> createState() =>
      FileManagerDashboardScreenState();
}

class FileManagerDashboardScreenState
    extends State<FileManagerDashboardScreen> {
  final recentlyUploadedFiles = [
    RecentlyUploadedFilesRow(
      name: "project-proposal.docx",
      size: "2.38 MB",
      uploadDate: "Feb 3, 2026",
    ),
    RecentlyUploadedFilesRow(
      name: "company-logo.png",
      size: "1.14 MB",
      uploadDate: "Feb 3, 2026",
    ),
    RecentlyUploadedFilesRow(
      name: "presentation.pptx",
      size: "5.35 MB",
      uploadDate: "Feb 3, 2026",
    ),
    RecentlyUploadedFilesRow(
      name: "budget.xlsx",
      size: "957.03 KB",
      uploadDate: "Feb 3, 2026",
    ),
    RecentlyUploadedFilesRow(
      name: "product-video.mp4",
      size: "150.68 MB",
      uploadDate: "Feb 3, 2026",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("File Manager Dashboard").bold().large(),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.upload),
                child: const Text("Upload"),
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
                      const Text("Documents").semiBold(),

                      const SizedBox(height: 16),

                      NumberTicker(
                        initialNumber: 0,
                        number: 1390,
                        style: const TextStyle(fontSize: 32),
                        formatter: (number) {
                          return number.toStringAsFixed(0);
                        },
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 35, min: 0, max: 100),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text("2.1 GB used").muted().small(),
                          const Spacer(),
                          const Text("35%").muted().small(),
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
                      const Text("Images").semiBold(),

                      const SizedBox(height: 16),

                      NumberTicker(
                        initialNumber: 0,
                        number: 5678,
                        style: const TextStyle(fontSize: 32),
                        formatter: (number) {
                          return number.toStringAsFixed(0);
                        },
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 62, min: 0, max: 100),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text("3.8 GB used").muted().small(),
                          const Spacer(),
                          const Text("62%").muted().small(),
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
                      const Text("Videos").semiBold(),

                      const SizedBox(height: 16),

                      NumberTicker(
                        initialNumber: 0,
                        number: 901,
                        style: const TextStyle(fontSize: 32),
                        formatter: (number) {
                          return number.toStringAsFixed(0);
                        },
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 89, min: 0, max: 100),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text("7.5 GB used").muted().small(),
                          const Spacer(),
                          const Text("89%").muted().small(),
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
                      const Text("Others").semiBold(),

                      const SizedBox(height: 16),

                      NumberTicker(
                        initialNumber: 0,
                        number: 234,
                        style: const TextStyle(fontSize: 32),
                        formatter: (number) {
                          return number.toStringAsFixed(0);
                        },
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 28, min: 0, max: 100),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text("1.2 GB used").muted().small(),
                          const Spacer(),
                          const Text("28%").muted().small(),
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
                      Row(
                        children: [
                          const Text("Documents").semiBold(),
                          const Spacer(),
                          Builder(
                            builder: (context) {
                              return IconButton.ghost(
                                onPressed: () {
                                  showDropdown(
                                    context: context,
                                    builder: (context) {
                                      return const DropdownMenu(
                                        children: [
                                          MenuButton(child: Text("Download")),
                                          MenuButton(child: Text("Share")),
                                          MenuDivider(),
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
                        ],
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        width: double.infinity,
                        padding: const .all(8),
                        child: const Text("120 items"),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text("Last update: 10 days ago"),
                          const Spacer(),
                          const Icon(LucideIcons.star),
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
                          const Text("Images").semiBold(),
                          const Spacer(),
                          Builder(
                            builder: (context) {
                              return IconButton.ghost(
                                onPressed: () {
                                  showDropdown(
                                    context: context,
                                    builder: (context) {
                                      return const DropdownMenu(
                                        children: [
                                          MenuButton(child: Text("Download")),
                                          MenuButton(child: Text("Share")),
                                          MenuDivider(),
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
                        ],
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        width: double.infinity,
                        padding: const .all(8),
                        child: const Text("250 items"),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text("Last update: 10 days ago"),
                          const Spacer(),
                          const Icon(LucideIcons.star),
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
                          const Text("Downloads").semiBold(),
                          const Spacer(),
                          Builder(
                            builder: (context) {
                              return IconButton.ghost(
                                onPressed: () {
                                  showDropdown(
                                    context: context,
                                    builder: (context) {
                                      return const DropdownMenu(
                                        children: [
                                          MenuButton(child: Text("Download")),
                                          MenuButton(child: Text("Share")),
                                          MenuDivider(),
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
                        ],
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        width: double.infinity,
                        padding: const .all(8),
                        child: const Text("80 items"),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text("Last update: 10 days ago"),
                          const Spacer(),
                          const Icon(LucideIcons.star),
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
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Storage Space Used").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "See your remaining file storage",
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

                      Row(
                        children: [
                          const Text("1.8 GB used"),
                          const Spacer(),
                          const Text("3 GB total"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 70, min: 0, max: 100),
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
                      const Text("Monthly File Transfer").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Last 28 Days").muted().small(),

                      const SizedBox(height: 16),

                      BarChartSample(),
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
                          const Text("Recently Uploaded Files").semiBold(),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            trailing: const Icon(LucideIcons.chevronRight),
                            child: const Text("View All"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Table(
                        // columnWidths: {0: FixedTableSize(200)},
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              _buildHeaderCell("Name"),
                              _buildHeaderCell("Size"),
                              _buildHeaderCell("Upload Date"),
                              _buildHeaderCell("Action", true),
                            ],
                          ),

                          // Body rows
                          ...recentlyUploadedFiles.map(
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
                        MenuButton(child: Text("Download")),
                        MenuButton(child: Text("Share")),
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

  TableRow _buildDataRow(BuildContext context, RecentlyUploadedFilesRow row) {
    return TableRow(
      cells: [
        _buildCell(row.name),
        _buildCell(row.size),
        _buildCell(row.uploadDate, true),
        _actionCell(context),
      ],
    );
  }
}

class BarChartSample extends StatefulWidget {
  const BarChartSample({super.key});

  @override
  State<BarChartSample> createState() => BarChartSampleState();
}

class BarChartSampleState extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0,
      child: Padding(
        padding: const .only(top: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final barsSpace = 4.0 * constraints.maxWidth / 400;
            final barsWidth = 32.0 * constraints.maxWidth / 400;

            return BarChart(
              BarChartData(
                alignment: .center,
                barTouchData: const BarTouchData(enabled: true),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowVerticalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Theme.of(
                      context,
                    ).colorScheme.border.withValues(alpha: 0.1),
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(show: false),
                groupsSpace: barsSpace,
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 4,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 5,
                    barsSpace: barsSpace,
                    barRods: [
                      BarChartRodData(
                        toY: 17,
                        rodStackItems: [
                          BarChartRodStackItem(0, 10, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                      BarChartRodData(
                        toY: 24,
                        rodStackItems: [
                          BarChartRodStackItem(0, 13, Colors.black),
                        ],
                        color: Colors.gray,
                        borderRadius: BorderRadius.zero,
                        width: barsWidth,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      0 => "Jan",
      1 => "Feb",
      2 => "Mar",
      3 => "Apr",
      4 => "May",
      5 => "Jun",
      _ => "",
    };

    return SideTitleWidget(
      meta: meta,
      child: Text(text, style: const TextStyle(fontSize: 10)),
    );
  }
}

class RecentlyUploadedFilesRow {
  final String name;
  final String size;
  final String uploadDate;

  RecentlyUploadedFilesRow({
    required this.name,
    required this.size,
    required this.uploadDate,
  });
}
