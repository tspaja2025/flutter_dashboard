import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ClassicDashboardScreen extends StatefulWidget {
  const ClassicDashboardScreen({super.key});

  @override
  State<ClassicDashboardScreen> createState() => _ClassicDashboardScreenState();
}

class _ClassicDashboardScreenState extends State<ClassicDashboardScreen> {
  CheckboxState _state = CheckboxState.unchecked;
  String? _selectedValue;
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Classic Dashboard").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Team Members",
                subtitle: "Invite your team members to collaborate.",
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
                  ).gap(8),

                  const SizedBox(height: 8),

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
                  ).gap(8),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Subscriptions",
                subtitle: "",
                children: [
                  const Text("+4850").large.semiBold,
                  const Text("+180.1% from last month").muted.small,

                  const SizedBox(height: 16),

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
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                            ],
                            showingTooltipIndicators: [0],
                          ),
                        ],
                        gridData: const FlGridData(show: false),
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Total Revenue",
                subtitle: "",
                children: [
                  const Text("\$15,231.89").large.semiBold,
                  const Text("+20.1% from last month").muted.small,

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
                              getDotPainter: (spot, percent, barData, index) {
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
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                leading: [
                  Avatar(
                    size: 24,
                    initials: Avatar.getInitials("ts paja"),
                    provider: const NetworkImage(
                      "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                    ),
                  ),
                ],
                title: "John Doe",
                subtitle: "john@doe.com",
                trailing: [
                  IconButton.outline(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.plus),
                  ),
                ],
                children: [
                  ChatGroup(
                    color: Colors.blue,
                    type: ChatBubbleType.tail.copyWith(
                      position: () => AxisDirectional.start,
                    ),
                    alignment: AxisAlignmentDirectional.start,
                    children: const [
                      ChatBubble(child: Text("Hi, how can I help you today?")),
                    ],
                  ),
                  ChatGroup(
                    color: Colors.green,
                    type: ChatBubbleType.tail.copyWith(
                      position: () => AxisDirectional.end,
                    ),
                    alignment: AxisAlignmentDirectional.end,
                    children: const [
                      ChatBubble(
                        child: Text("Hey, I'm having trouble with my account."),
                      ),
                    ],
                  ),
                  ChatGroup(
                    color: Colors.blue,
                    type: ChatBubbleType.tail.copyWith(
                      position: () => AxisDirectional.start,
                    ),
                    alignment: AxisAlignmentDirectional.start,
                    children: const [
                      ChatBubble(child: Text("What seems to be the problem?")),
                    ],
                  ),
                  ChatGroup(
                    color: Colors.green,
                    type: ChatBubbleType.tail.copyWith(
                      position: () => AxisDirectional.end,
                    ),
                    alignment: AxisAlignmentDirectional.end,
                    children: const [
                      ChatBubble(child: Text("I can't log in.")),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
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
                  ).gap(8),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: CardWidget(
                title: "Exercise Minutes",
                subtitle:
                    "Your exercise minutes are ahead of where you normally are.",
                trailing: [
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
                children: [
                  const SizedBox(height: 32),

                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: AspectRatio(
                      aspectRatio: 1.23,
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
                title: "Latest Payments",
                subtitle: "See recent payments from your customers here.",
                trailing: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      placeholder: const Text("Filter payments..."),
                    ),
                  ),
                ],
                children: [
                  TableWidget(
                    columnWidths: {
                      0: FixedTableSize(32),
                      1: FixedTableSize(170),
                      2: FixedTableSize(210),
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
                      ...rows.map((row) => _buildDataRow(context, row)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Payment Method",
                subtitle: "Add a new payment method to your account.",
                children: [
                  RadioGroup(
                    value: cardValue,
                    onChanged: (cardValue) {
                      setState(() {
                        this.cardValue = cardValue;
                      });
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: [
                        Expanded(
                          child: RadioCard(
                            value: 1,
                            child: Basic(
                              titleAlignment: Alignment.center,
                              subtitleAlignment: Alignment.center,
                              title: Icon(LucideIcons.creditCard),
                              subtitle: Text("Card"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RadioCard(
                            value: 2,
                            child: Basic(
                              titleAlignment: Alignment.center,
                              subtitleAlignment: Alignment.center,
                              title: Icon(Icons.paypal_outlined),
                              subtitle: Text("Paypal"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: RadioCard(
                            value: 3,
                            child: Basic(
                              titleAlignment: Alignment.center,
                              subtitleAlignment: Alignment.center,
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
