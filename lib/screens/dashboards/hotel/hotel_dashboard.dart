import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HotelDashboardScreen extends StatefulWidget {
  const HotelDashboardScreen({super.key});

  @override
  State<HotelDashboardScreen> createState() => _HotelDashboardScreenState();
}

class _HotelDashboardScreenState extends State<HotelDashboardScreen> {
  String? overviewValue;
  String? statValue;
  String? allStatusValue;
  int index = 0;

  final bookingList = [
    BookingListRow(
      bookingId: "1",
      guestName: "Angus Copper",
      roomType: "Deluxe",
      roomNumber: "101",
      duration: "3 nights",
      checkInOut: "Jan 27, 2026 - Jan 30, 2026",
      status: "Checked-In",
    ),
    BookingListRow(
      bookingId: "2",
      guestName: "Catherine Lopp",
      roomType: "Standard",
      roomNumber: "201",
      duration: "2 nights",
      checkInOut: "Jan 27, 2026 - Jan 29, 2026",
      status: "Checked-In",
    ),
    BookingListRow(
      bookingId: "3",
      guestName: "Edger Irving",
      roomType: "Suite",
      roomNumber: "301",
      duration: "3 nights",
      checkInOut: "Jan 27, 2026 - Jan 30, 2026",
      status: "Pending",
    ),
    BookingListRow(
      bookingId: "4",
      guestName: "Ice B. Holand",
      roomType: "Standard",
      roomNumber: "401",
      duration: "1 nights",
      checkInOut: "Jan 27, 2026 - Jan 28, 2026",
      status: "Pending",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Hotel Dashboard").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Today's check-in",
                subtitle: "200 | Unit Number: 1,0000",
                leading: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(LucideIcons.clock, color: Colors.white),
                  ),
                ],
                trailing: [
                  IconButton.ghost(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.ellipsisVertical),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Today's check-out",
                subtitle: "34 | Unit Number: 520",
                leading: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(LucideIcons.clock, color: Colors.white),
                  ),
                ],
                trailing: [
                  IconButton.ghost(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.ellipsisVertical),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Total guests",
                subtitle: "3432 | Unit Number: 152",
                leading: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(LucideIcons.clock, color: Colors.white),
                  ),
                ],
                trailing: [
                  IconButton.ghost(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.ellipsisVertical),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Total Amount",
                subtitle: "\$668,726 | Unit Number: 266",
                leading: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      LucideIcons.dollarSign,
                      color: Colors.white,
                    ),
                  ),
                ],
                trailing: [
                  IconButton.ghost(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.ellipsisVertical),
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
                title: "Reservations",
                subtitle: "",
                children: [PieChartSample()],
              ),
            ),
            Expanded(
              flex: 2,
              child: CardWidget(
                title: "Campaign Overview",
                subtitle: "",
                trailing: [
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
                        overviewValue = value;
                      });
                    },
                    value: overviewValue,
                    placeholder: const Text("Select an overview"),
                    popup: const SelectPopup(
                      items: SelectItemList(
                        children: [
                          SelectItemButton(
                            value: "This week",
                            child: Text("This week"),
                          ),
                          SelectItemButton(
                            value: "Last week",
                            child: Text("Last week"),
                          ),
                          SelectItemButton(
                            value: "This month",
                            child: Text("This month"),
                          ),
                          SelectItemButton(
                            value: "Last month",
                            child: Text("Last month"),
                          ),
                          SelectItemButton(
                            value: "Last 3 months",
                            child: Text("Last 3 months"),
                          ),
                        ],
                      ),
                    ).call,
                  ),
                  IconButton.outline(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.download),
                  ),
                ],
                children: [
                  Row(
                    children: [
                      OutlinedContainer(
                        width: 200,
                        height: 100,
                        padding: const EdgeInsets.all(16),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Booked").muted.small,
                            const Text("290").semiBold,
                          ],
                        ),
                      ),
                      OutlinedContainer(
                        width: 200,
                        height: 100,
                        padding: const EdgeInsets.all(16),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Visited").muted.small,
                            const Text("638").semiBold,
                          ],
                        ),
                      ),
                    ],
                  ),

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
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Recent activities",
                subtitle: "",
                children: [
                  Row(
                    children: [
                      Avatar(
                        size: 24,
                        initials: Avatar.getInitials("ts paja"),
                        provider: const NetworkImage(
                          "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Wade Warren").bold,
                          const Text(
                            "Room #1, requested for a coffee and water",
                          ).muted.small,
                        ],
                      ),
                      const Spacer(),
                      const Text("16 mins").muted.small,
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Avatar(
                        size: 24,
                        initials: Avatar.getInitials("ts paja"),
                        provider: const NetworkImage(
                          "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Esther Howard").bold,
                          const Text(
                            "Room #2, requested for a coffee and water",
                          ).muted.small,
                        ],
                      ),
                      const Spacer(),
                      const Text("16 mins").muted.small,
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Avatar(
                        size: 24,
                        initials: Avatar.getInitials("ts paja"),
                        provider: const NetworkImage(
                          "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Leslie Alexander").bold,
                          const Text(
                            "Room #3, requested for a coffee and water",
                          ).muted.small,
                        ],
                      ),
                      const Spacer(),
                      const Text("16 mins").muted.small,
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Avatar(
                        size: 24,
                        initials: Avatar.getInitials("ts paja"),
                        provider: const NetworkImage(
                          "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Guy Hawkings").bold,
                          const Text(
                            "Room #4, requested for a coffee and water",
                          ).muted.small,
                        ],
                      ),
                      const Spacer(),
                      const Text("16 mins").muted.small,
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    child: OutlineButton(
                      onPressed: () {},
                      alignment: Alignment.center,
                      child: const Text("View All"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Revenue Stat",
                subtitle: "",
                trailing: [
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
                        statValue = value;
                      });
                    },
                    value: statValue,
                    placeholder: const Text("Select an stat"),
                    popup: const SelectPopup(
                      items: SelectItemList(
                        children: [
                          SelectItemButton(
                            value: "Weekly",
                            child: Text("Weekly"),
                          ),
                          SelectItemButton(
                            value: "Monthly",
                            child: Text("Monthly"),
                          ),
                          SelectItemButton(
                            value: "Yearly",
                            child: Text("Yearly"),
                          ),
                        ],
                      ),
                    ).call,
                  ),
                ],
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
                        titlesData: const FlTitlesData(show: false),
                        borderData: FlBorderData(show: false),
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(
                                toY: 240,
                                width: 47,
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                toY: 300,
                                width: 47,
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(
                                toY: 200,
                                width: 47,
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(
                                toY: 278,
                                width: 47,
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                          BarChartGroupData(
                            x: 4,
                            barRods: [
                              BarChartRodData(
                                toY: 189,
                                width: 47,
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                          BarChartGroupData(
                            x: 5,
                            barRods: [
                              BarChartRodData(
                                toY: 239,
                                width: 47,
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                toY: 278,
                                width: 47,
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                          BarChartGroupData(
                            x: 7,
                            barRods: [
                              BarChartRodData(
                                toY: 189,
                                width: 47,
                                borderRadius: .circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                        ],
                        gridData: const FlGridData(show: false),
                        alignment: .spaceAround,
                        maxY: 500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Bookings",
                subtitle: "",
                trailing: [
                  Tabs(
                    index: index,
                    children: const [
                      TabItem(child: Text("D")),
                      TabItem(child: Text("W")),
                      TabItem(child: Text("M")),
                      TabItem(child: Text("Y")),
                    ],
                    onChanged: (int value) {
                      setState(() {
                        index = value;
                      });
                    },
                  ),
                ],
                children: [
                  Row(
                    children: [
                      const Text("20,395.50").x2Large.semiBold,
                      const Text("Total Bookings").muted.small,
                    ],
                  ),

                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("Online booking"),
                      const Spacer(),
                      const Text("Offline booking"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("14 839").semiBold,
                      const Spacer(),
                      const Text("5 556").semiBold,
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
                title: "Booking List",
                subtitle: "",
                trailing: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      placeholder: const Text("Search guest,status,etc"),
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
                        overviewValue = value;
                      });
                    },
                    value: overviewValue,
                    placeholder: const Text("Select a status"),
                    popup: const SelectPopup(
                      items: SelectItemList(
                        children: [
                          SelectItemButton(
                            value: "All Status",
                            child: Text("All Status"),
                          ),
                          SelectItemButton(
                            value: "Checked-in",
                            child: Text("Checked-in"),
                          ),
                          SelectItemButton(
                            value: "Pending",
                            child: Text("Pending"),
                          ),
                        ],
                      ),
                    ).call,
                  ),
                ],
                children: [
                  TableWidget(
                    columnWidths: {0: FixedTableSize(120)},
                    hasCheckbox: false,
                    headerChildren: [
                      _buildHeaderCell("Booking ID"),
                      _buildHeaderCell("Guest Name"),
                      _buildHeaderCell("Room Type"),
                      _buildHeaderCell("Room Number"),
                      _buildHeaderCell("Duration"),
                      _buildHeaderCell("Check-In & Check-Out"),
                      _buildHeaderCell("Status", true),
                    ],
                    bodyChildren: [
                      ...bookingList.map((row) => _buildDataRow(context, row)),
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

  TableRow _buildDataRow(BuildContext context, BookingListRow row) {
    return TableRow(
      cells: [
        _buildCell(row.bookingId),
        _buildCell(row.guestName),
        _buildCell(row.roomType),
        _buildCell(row.roomNumber),
        _buildCell(row.duration),
        _buildCell(row.checkInOut),
        _buildCell(row.status, true),
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

class BookingListRow {
  final String bookingId;
  final String guestName;
  final String roomType;
  final String roomNumber;
  final String duration;
  final String checkInOut;
  final String status;

  BookingListRow({
    required this.bookingId,
    required this.guestName,
    required this.roomType,
    required this.roomNumber,
    required this.duration,
    required this.checkInOut,
    required this.status,
  });
}
