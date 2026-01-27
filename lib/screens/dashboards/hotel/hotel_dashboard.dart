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
                    children: [const Text("Reservations").semiBold()],
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
                          TableRow(
                            cells: [
                              _buildCell("1"),
                              _buildCell("Angus Copper"),
                              _buildCell("Deluxe"),
                              _buildCell("101"),
                              _buildCell("3 nights"),
                              _buildCell("Jan 27, 2026 - Jan 30, 2026"),
                              _buildCell("Checked-In", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("2"),
                              _buildCell("Catherine Lopp"),
                              _buildCell("Standard"),
                              _buildCell("201"),
                              _buildCell("2 nights"),
                              _buildCell("Jan 27, 2026 - Jan 29, 2026"),
                              _buildCell("Checked-In", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("3"),
                              _buildCell("Edger Irving"),
                              _buildCell("Suite"),
                              _buildCell("301"),
                              _buildCell("3 nights"),
                              _buildCell("Jan 27, 2026 - Jan 30, 2026"),
                              _buildCell("Pending", true),
                            ],
                          ),

                          TableRow(
                            cells: [
                              _buildCell("4"),
                              _buildCell("Ice B. Holand"),
                              _buildCell("Standard"),
                              _buildCell("401"),
                              _buildCell("1 nights"),
                              _buildCell("Jan 27, 2026 - Jan 28, 2026"),
                              _buildCell("Pending", true),
                            ],
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
}
