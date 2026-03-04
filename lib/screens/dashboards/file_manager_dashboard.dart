import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class FileManagerDashboardScreen extends StatefulWidget {
  const FileManagerDashboardScreen({super.key});

  @override
  State<FileManagerDashboardScreen> createState() =>
      _FileManagerDashboardScreenState();
}

class _FileManagerDashboardScreenState
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("File Manager Dashboard").bold.large,
            const Spacer(),
            PrimaryButton(
              onPressed: () {},
              leading: const Icon(LucideIcons.upload),
              child: const Text("Upload"),
            ),
          ],
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Documents",
                subtitle: "",
                children: [
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
                      const Text("2.1 GB used").muted.small,
                      const Spacer(),
                      const Text("35%").muted.small,
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Images",
                subtitle: "",
                children: [
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
                      const Text("3.8 GB used").muted.small,
                      const Spacer(),
                      const Text("62%").muted.small,
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Videos",
                subtitle: "",
                children: [
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
                      const Text("7.5 GB used").muted.small,
                      const Spacer(),
                      const Text("89%").muted.small,
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Others",
                subtitle: "",
                children: [
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
                    child: Progress(progress: 35, min: 0, max: 100),
                  ),
                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Text("1.2 GB used").muted.small,
                      const Spacer(),
                      const Text("28%").muted.small,
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
              child: CardWidget(
                title: "Documents",
                subtitle: "",
                trailing: [
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
                children: [
                  OutlinedContainer(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    backgroundColor: Colors.gray.shade200,
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
            Expanded(
              child: CardWidget(
                title: "Images",
                subtitle: "",
                trailing: [
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
                children: [
                  OutlinedContainer(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    backgroundColor: Colors.gray.shade200,
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
            Expanded(
              child: CardWidget(
                title: "Downloads",
                subtitle: "",
                trailing: [
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
                children: [
                  OutlinedContainer(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    backgroundColor: Colors.gray.shade200,
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
            Expanded(
              child: CardWidget(
                title: "Storage Space Used",
                subtitle: "See your remaining file storage",
                trailing: [
                  IconButton.outline(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.chevronRight),
                  ),
                ],
                children: [
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
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Monthly File Transfer",
                subtitle: "Last 28 days",
                children: [BarChartSample()],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Recently Uploaded Files",
                subtitle: "",
                trailing: [
                  OutlineButton(
                    onPressed: () {},
                    trailing: const Icon(LucideIcons.chevronRight),
                    child: const Text("View All"),
                  ),
                ],
                children: [
                  TableWidget(
                    columnWidths: {},
                    hasCheckbox: false,
                    headerChildren: [
                      _buildHeaderCell("Name"),
                      _buildHeaderCell("Size"),
                      _buildHeaderCell("Upload Date"),
                      _buildHeaderCell("Action", true),
                    ],
                    bodyChildren: [
                      ...recentlyUploadedFiles.map(
                        (row) => _buildDataRow(context, row),
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
        padding: const EdgeInsets.only(top: 16),
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
