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

  final rows = [
    // Body rows
    PaymentRow(
      customer: "Kenneth Thompson",
      email: "kenneth@thompson.com",
      amount: "\$316.00",
      status: "Success",
    ),
    PaymentRow(
      customer: "Abraham Lincoln",
      email: "abraham@lincoln.com",
      amount: "\$242.00",
      status: "Success",
    ),
    PaymentRow(
      customer: "Monserrat Rodriguez",
      email: "monserrat@rodriguez.com",
      amount: "\$837.00",
      status: "Processing",
    ),
    PaymentRow(
      customer: "Silas Johnson",
      email: "silas@johnson.com",
      amount: "\$874.00",
      status: "Success",
    ),
    PaymentRow(
      customer: "Carmella DeVito",
      email: "carmella@devito.com",
      amount: "\$721.00",
      status: "Failed",
    ),
    PaymentRow(
      customer: "Maria Garcia",
      email: "maria@garcia.com",
      amount: "\$529.00",
      status: "Success",
    ),
    PaymentRow(
      customer: "James Wilson",
      email: "james@wilson.com",
      amount: "\$438.00",
      status: "Processing",
    ),
    PaymentRow(
      customer: "Sarah Jones",
      email: "sarah@jones.com",
      amount: "\$692.00",
      status: "Success",
    ),
  ];

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

                      const SizedBox(height: 16),

                      const Text("+4850").large().semiBold(),
                      const Text("+180.1% from last month").muted().small(),

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
                      const Text("Total Revenue").semiBold(),

                      const SizedBox(height: 16),

                      const Text("\$15,231.89").large().semiBold(),
                      const Text("+20.1% from last month").muted().small(),

                      SizedBox(
                        height: 90,
                        width: double.infinity,
                        child: LineChart(
                          LineChartData(
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  FlSpot(0, 100),
                                  FlSpot(2, 200),
                                  FlSpot(4, 150),
                                  FlSpot(6, 250),
                                  FlSpot(8, 110),
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
                                          color: Colors.white,
                                          strokeColor: Colors.black,
                                          strokeWidth: 1,
                                        );
                                      },
                                ),
                              ),
                            ],
                            minY: 0,
                            maxY: 300,
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
                              const Text("john@doe.com").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          IconButton.outline(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.plus),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.border,
                              borderRadius: .circular(12),
                            ),
                            padding: const .all(8),
                            child: const Text("Hi, how can I help you today?"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: .circular(12),
                            ),
                            padding: const .all(8),
                            child: const Text(
                              "Hey, I'm having trouble with my account.",
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.border,
                              borderRadius: .circular(12),
                            ),
                            padding: const .all(8),
                            child: const Text("What seems to be the problem?"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: .circular(12),
                            ),
                            padding: const .all(8),
                            child: const Text("I can't log in."),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            child: TextField(
                              placeholder: const Text("Type your message"),
                            ),
                          ),
                          IconButton.primary(
                            enabled: false,
                            onPressed: () {},
                            icon: const Icon(LucideIcons.send),
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
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Exercise Minutes").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "Your exercise minutes are ahead of where you normally are.",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Builder(
                            builder: (context) {
                              return OutlineButton(
                                onPressed: () {
                                  showDropdown(
                                    context: context,
                                    builder: (context) {
                                      return const DropdownMenu(
                                        children: [
                                          MenuButton(child: Text("Excel")),
                                          MenuButton(child: Text("PDF")),
                                        ],
                                      );
                                    },
                                  );
                                },
                                leading: const Icon(LucideIcons.download),
                                child: const Text("Export"),
                              );
                            },
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
                          ...rows.map((row) => _buildDataRow(context, row)),
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
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                          onPressed: () {},
                          alignment: Alignment.center,
                          child: const Text("Continue"),
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
                        MenuButton(child: Text("View details")),
                        MenuButton(child: Text("Download receipt")),
                        MenuButton(child: Text("Contact customer")),
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

  TableRow _buildDataRow(BuildContext context, PaymentRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.customer),
        _buildCell(row.email),
        _buildCell(row.amount),
        _buildCell(row.status),
        _actionCell(context),
      ],
    );
  }
}

class PaymentRow {
  final String customer;
  final String email;
  final String amount;
  final String status;

  PaymentRow({
    required this.customer,
    required this.email,
    required this.amount,
    required this.status,
  });
}
