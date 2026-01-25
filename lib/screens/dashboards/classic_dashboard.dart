import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ClassicDashboardScreen extends StatefulWidget {
  const ClassicDashboardScreen({super.key});

  @override
  State<ClassicDashboardScreen> createState() => ClassicDashboardScreenState();
}

class ClassicDashboardScreenState extends State<ClassicDashboardScreen> {
  String? _selectedValue;
  CheckboxState _state = CheckboxState.unchecked;
  int cardValue = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Classic Dashboard").bold().large()]),

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
                      const Text("Team Members").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Invite your team members to collaborate.",
                      ).muted().small(),

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
                              const Text("John Doe"),
                              const Text("contact@johndoe.com"),
                            ],
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
                            placeholder: const Text("Role"),
                            popup: const SelectPopup(
                              items: SelectItemList(
                                children: [
                                  SelectItemButton(
                                    value: "Viewer",
                                    child: Text("Viewer"),
                                  ),
                                  SelectItemButton(
                                    value: "Developer",
                                    child: Text("Developer"),
                                  ),
                                  SelectItemButton(
                                    value: "Billing",
                                    child: Text("Billing"),
                                  ),
                                  SelectItemButton(
                                    value: "Owner",
                                    child: Text("Owner"),
                                  ),
                                ],
                              ),
                            ).call,
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

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
                              const Text("Jane Doe"),
                              const Text("contact@janedoe.com"),
                            ],
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
                            placeholder: const Text("Role"),
                            popup: const SelectPopup(
                              items: SelectItemList(
                                children: [
                                  SelectItemButton(
                                    value: "Viewer",
                                    child: Text("Viewer"),
                                  ),
                                  SelectItemButton(
                                    value: "Developer",
                                    child: Text("Developer"),
                                  ),
                                  SelectItemButton(
                                    value: "Billing",
                                    child: Text("Billing"),
                                  ),
                                  SelectItemButton(
                                    value: "Owner",
                                    child: Text("Owner"),
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
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Subscriptions").semiBold(),
                      const Text("+4850").large().semiBold(),
                      const Text("+180.1% from last month").muted().small(),

                      const SizedBox(height: 16),

                      SizedBox(
                        height: 75,
                        child: BarChart(
                          BarChartData(
                            barTouchData: barTouchData,
                            titlesData: const FlTitlesData(show: false),
                            borderData: FlBorderData(show: false),
                            barGroups: barGroups,
                            gridData: const FlGridData(show: false),
                            alignment: .spaceAround,
                            maxY: 20,
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
                    children: [const Text("Total Revenue").semiBold()],
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
                    children: [const Text("Chat").semiBold()],
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
                      const Text("Exercise Minutes").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Your exercise minutes are ahead of where you normally are.",
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
                flex: 2,
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
                              const Text("Latest Payments").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "See recent payments from your customers here.",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              placeholder: const Text("Filter payments..."),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Table(
                        columnWidths: {0: FixedTableSize(48)},
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
                              _buildCell("Production API Key"),
                              _buildCell("9e...f62"),
                              _buildCell("Jan 19, 2025"),
                              _buildCell("Active"),
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
                              _buildCell("Development API Key"),
                              _buildCell("9e...f62"),
                              _buildCell("Jan 19, 2025"),
                              _buildCell("Inactive"),
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
                              _buildCell("Production Test"),
                              _buildCell("9e...f62"),
                              _buildCell("Jan 19, 2025"),
                              _buildCell("Expired"),
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
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Payment Method").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Add a new payment method to your account.",
                      ).muted().small(),

                      const SizedBox(height: 16),

                      RadioGroup(
                        value: cardValue,
                        onChanged: (cardValue) {
                          setState(() {
                            this.cardValue = cardValue;
                          });
                        },
                        child: const Row(
                          mainAxisSize: .min,
                          spacing: 8,
                          children: [
                            Expanded(
                              child: RadioCard(
                                value: 1,
                                child: Basic(
                                  titleAlignment: .center,
                                  subtitleAlignment: .center,
                                  title: Icon(LucideIcons.creditCard),
                                  subtitle: Text("Card"),
                                ),
                              ),
                            ),
                            Expanded(
                              child: RadioCard(
                                value: 2,
                                child: Basic(
                                  titleAlignment: .center,
                                  subtitleAlignment: .center,
                                  title: Icon(Icons.paypal_outlined),
                                  subtitle: Text("Card"),
                                ),
                              ),
                            ),
                            Expanded(
                              child: RadioCard(
                                value: 3,
                                child: Basic(
                                  titleAlignment: .center,
                                  subtitleAlignment: .center,
                                  title: Icon(LucideIcons.apple),
                                  subtitle: Text("Apple"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      Form(
                        child: Column(
                          children: [
                            FormField(
                              key: const InputKey(#name),
                              label: const Text("Name on the card"),
                              child: const TextField(),
                            ),

                            const SizedBox(height: 16),

                            FormField(
                              key: const InputKey(#city),
                              label: const Text("City"),
                              child: const TextField(),
                            ),

                            const SizedBox(height: 16),

                            FormField(
                              key: const InputKey(#cardNumber),
                              label: const Text("Card number"),
                              child: const TextField(),
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                Expanded(
                                  child: FormField(
                                    key: const InputKey(#expires),
                                    label: const Text("Expires"),
                                    child: const TextField(),
                                  ),
                                ),
                                Expanded(
                                  child: FormField(
                                    key: const InputKey(#year),
                                    label: const Text("Year"),
                                    child: const TextField(),
                                  ),
                                ),
                                Expanded(
                                  child: FormField(
                                    key: const InputKey(#cvc),
                                    label: const Text("CVC"),
                                    child: const TextField(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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

  BarTouchData get barTouchData => BarTouchData(
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
                color: Theme.of(context).colorScheme.primary,
                fontWeight: .bold,
              ),
            );
          },
    ),
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(
          toY: 2.4,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(
          toY: 3.0,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
          toY: 2.0,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
          toY: 2.78,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
          toY: 1.89,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(
          toY: 2.39,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(
          toY: 2.78,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 7,
      barRods: [
        BarChartRodData(
          toY: 1.89,
          width: 22,
          borderRadius: .circular(0),
          color: Colors.black,
        ),
      ],
      showingTooltipIndicators: [0],
    ),
  ];
}
