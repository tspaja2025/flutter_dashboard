import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HotelDashboardScreen extends StatefulWidget {
  const HotelDashboardScreen({super.key});

  @override
  State<HotelDashboardScreen> createState() => HotelDashboardScreenState();
}

class HotelDashboardScreenState extends State<HotelDashboardScreen> {
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
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Hotel Dashboard").bold().large()]),

          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  filled: true,
                  fillColor: Colors.blue.shade900,
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: .circular(12),
                            ),
                            child: const Icon(LucideIcons.clock),
                          ),
                          const Spacer(),
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.ellipsisVertical),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      const Text("Today's check-in").muted().small(),
                      const SizedBox(height: 4),
                      const Text("200").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Unit Number: 1,000").muted().small(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  filled: true,
                  fillColor: Colors.green.shade900,
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: .circular(12),
                            ),
                            child: const Icon(LucideIcons.logOut),
                          ),
                          const Spacer(),
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.ellipsisVertical),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      const Text("Today's check-out").muted().small(),
                      const SizedBox(height: 4),
                      const Text("34").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Unit Number: 520").muted().small(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  filled: true,
                  fillColor: Colors.pink.shade900,
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: .circular(12),
                            ),
                            child: const Icon(LucideIcons.users),
                          ),
                          const Spacer(),
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.ellipsisVertical),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      const Text("Total guests").muted().small(),
                      const SizedBox(height: 4),
                      const Text("3432").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Unit Number: 152").muted().small(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  filled: true,
                  fillColor: Colors.orange.shade900,
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: .circular(12),
                            ),
                            child: const Icon(LucideIcons.dollarSign),
                          ),
                          const Spacer(),
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.ellipsisVertical),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      const Text("Total amount").muted().small(),
                      const SizedBox(height: 4),
                      const Text("\$668,726").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Unit Number: 266").muted().small(),
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
                      const Text("Reservations").semiBold(),

                      const SizedBox(height: 16),

                      PieChartSample(),
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
                      Row(
                        spacing: 8,
                        children: [
                          const Text("Campaign Overview").semiBold(),
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
                      ),

                      Row(
                        children: [
                          OutlinedContainer(
                            width: 200,
                            height: 100,
                            padding: const .all(16),
                            borderRadius: BorderRadius.only(
                              topLeft: .circular(8),
                              bottomLeft: .circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("Booked").muted().small(),
                                const Text("290").semiBold(),
                              ],
                            ),
                          ),
                          OutlinedContainer(
                            width: 200,
                            height: 100,
                            padding: const .all(16),
                            borderRadius: BorderRadius.only(
                              topRight: .circular(8),
                              bottomRight: .circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("Visited").muted().small(),
                                const Text("638").semiBold(),
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
                      const Text("Recent activities").semiBold(),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
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
                              const Text("Wade Warren").bold(),
                              const Text(
                                "Room #1, requested for a coffee and water",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("16 mins").muted().small(),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
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
                              const Text("Esther Howard").bold(),
                              const Text(
                                "Room #2, requested for a coffee and water",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("16 mins").muted().small(),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
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
                              const Text("Leslie Alexander").bold(),
                              const Text(
                                "Room #3, requested for a coffee and water",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("16 mins").muted().small(),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
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
                              const Text("Guy Hawkings").bold(),
                              const Text(
                                "Room #4, requested for a coffee and water",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          const Text("16 mins").muted().small(),
                        ],
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: OutlineButton(
                          onPressed: () {},
                          alignment: .center,
                          child: const Text("View All"),
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
                          const Text("Revenue Stat").semiBold(),
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
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        height: 75,
                        child: BarChart(
                          BarChartData(
                            barTouchData: BarTouchData(
                              enabled: false,
                              touchTooltipData: BarTouchTooltipData(
                                getTooltipColor: (group) => Colors.transparent,
                                tooltipPadding: .zero,
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
                                          fontWeight: .bold,
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
                                    borderRadius: .circular(4),
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
                                    borderRadius: .circular(4),
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
                                    borderRadius: .circular(8),
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
                                    borderRadius: .circular(4),
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
                                    borderRadius: .circular(4),
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
                                    borderRadius: .circular(4),
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
                                    borderRadius: .circular(4),
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
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Bookings").semiBold(),
                          const Spacer(),
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
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("20,395.50").x2Large().semiBold(),
                          const Text("Total Bookings").muted().small(),
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
                                  topLeft: .circular(4),
                                  bottomLeft: .circular(4),
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
                                topRight: .circular(4),
                                bottomRight: .circular(4),
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
                          const Text("14 839").semiBold(),
                          const Spacer(),
                          const Text("5 556").semiBold(),
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
                flex: 2,
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          const Text("Booking List").semiBold(),
                          const Spacer(),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              placeholder: const Text(
                                "Search guest,status,etc",
                              ),
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
                      ),

                      const SizedBox(height: 16),

                      Table(
                        columnWidths: {0: FixedTableSize(120)},
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              _buildHeaderCell("Booking ID"),
                              _buildHeaderCell("Guest Name"),
                              _buildHeaderCell("Room Type"),
                              _buildHeaderCell("Room Number"),
                              _buildHeaderCell("Duration"),
                              _buildHeaderCell("Check-In & Check-Out"),
                              _buildHeaderCell("Status", true),
                            ],
                          ),

                          // Body rows
                          ...bookingList.map(
                            (row) => _buildDataRow(context, row),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("0 of 8 row(s) selected."),
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
