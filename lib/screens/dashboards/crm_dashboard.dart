import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CrmDashboardScreen extends StatefulWidget {
  const CrmDashboardScreen({super.key});

  @override
  State<CrmDashboardScreen> createState() => _CrmDashboardScreenState();
}

class _CrmDashboardScreenState extends State<CrmDashboardScreen> {
  CheckboxState _state = CheckboxState.unchecked;
  String? _selectedValue;

  final leadRow = [
    LeadsRow(
      status: "Success",
      email: "kenneth@thompson.com",
      amount: "\$316.00",
    ),
    LeadsRow(
      status: "Success",
      email: "abraham@lincoln.com",
      amount: "\$242.00",
    ),
    LeadsRow(
      status: "Processing",
      email: "monserrat@rodriguez.com",
      amount: "\$837.00",
    ),
    LeadsRow(status: "Success", email: "silas@johnson.com", amount: "\$874.00"),
    LeadsRow(
      status: "Failed",
      email: "carmella@devito.com",
      amount: "\$721.00",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("CRM Dashboard").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Your target is incomplete",
                subtitle: "",
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(value: 0.48, size: 48),
                          const Text("48%").small,
                        ],
                      ),
                      Expanded(
                        child: const Text(
                          "You have completed 48% of the given target, you can also check your status",
                        ),
                      ),
                    ],
                  ).gap(8),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Total Customers",
                subtitle: "+10.4% from last month",
                children: [const Text("1890").xLarge.semiBold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Total Deals",
                subtitle: "-0.8% from last month",
                children: [const Text("\$1,02,890").xLarge.semiBold],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Total Revenue",
                subtitle: "+20.1% from last month",
                children: [const Text("\$435,578").xLarge.semiBold],
              ),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Leads by Source",
                subtitle: "",
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
                children: [PieChartSample()],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Tasks",
                subtitle: "Track and manage your upcoming tasks.",
                trailing: [
                  OutlineButton(
                    onPressed: () {},
                    leading: const Icon(LucideIcons.plus),
                    child: const Text("Add Task"),
                  ),
                ],
                children: [
                  OutlinedContainer(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          state: _state,
                          onChanged: (value) {
                            setState(() {
                              _state = value;
                            });
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Follow up with...").small,
                            const SizedBox(height: 4),
                            const Text(
                              "Send proposal and schedule meeting",
                            ).muted.small,
                            const SizedBox(height: 4),
                            const Chip(child: Text("High")),
                          ],
                        ),
                      ],
                    ).gap(8),
                  ),

                  const SizedBox(height: 16),

                  OutlinedContainer(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          state: _state,
                          onChanged: (value) {
                            setState(() {
                              _state = value;
                            });
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Prepare quarterly report").small,
                            const SizedBox(height: 4),
                            const Text(
                              "Compile sales data and forecasts",
                            ).muted.small,
                            const SizedBox(height: 4),
                            const Chip(child: Text("Medium")),
                          ],
                        ),
                      ],
                    ).gap(8),
                  ),

                  const SizedBox(height: 16),

                  OutlinedContainer(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          state: _state,
                          onChanged: (value) {
                            setState(() {
                              _state = value;
                            });
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Update customer profiles").small,
                            const SizedBox(height: 4),
                            const Text(
                              "Verify contact information and preferences",
                            ).muted.small,
                            const SizedBox(height: 4),
                            const Chip(child: Text("Low")),
                          ],
                        ),
                      ],
                    ).gap(8),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Sales pipeline",
                subtitle: "Current Deals in your sales pipeline",
                children: [
                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Colors.gray.shade900,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Lead").small,
                          const Text("235 deals").muted.small,
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: Progress(
                          progress: 38,
                          min: 0,
                          max: 100,
                          color: Colors.gray.shade800,
                        ),
                      ),
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Colors.gray.shade800,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Qualified").small,
                          const Text("235 deals").muted.small,
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: Progress(
                          progress: 24,
                          min: 0,
                          max: 100,
                          color: Colors.gray.shade700,
                        ),
                      ),
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Colors.gray.shade600,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Proposal").small,
                          const Text("235 deals").muted.small,
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: Progress(
                          progress: 18,
                          min: 0,
                          max: 100,
                          color: Colors.gray.shade500,
                        ),
                      ),
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Colors.gray.shade400,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Negotiation").small,
                          const Text("235 deals").muted.small,
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: Progress(
                          progress: 12,
                          min: 0,
                          max: 100,
                          color: Colors.gray.shade500,
                        ),
                      ),
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Colors.gray.shade300,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Closed Won").small,
                          const Text("235 deals").muted.small,
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: Progress(
                          progress: 8,
                          min: 0,
                          max: 100,
                          color: Colors.gray.shade500,
                        ),
                      ),
                    ],
                  ).gap(16),
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
                title: "Leads",
                subtitle: "",
                trailing: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      placeholder: const Text("Filter leads..."),
                    ),
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
                    placeholder: const Text("Columns"),
                    popup: const SelectPopup(
                      items: SelectItemList(
                        children: [
                          SelectItemButton(
                            value: "Status",
                            child: Text("Status"),
                          ),
                          SelectItemButton(
                            value: "Email",
                            child: Text("Email"),
                          ),
                          SelectItemButton(
                            value: "Amount",
                            child: Text("Amount"),
                          ),
                        ],
                      ),
                    ).call,
                  ),
                ],
                children: [
                  TableWidget(
                    columnWidths: {0: FixedTableSize(48)},
                    hasCheckbox: true,
                    headerChildren: [
                      _buildHeaderCell("Status"),
                      _buildHeaderCell("Email"),
                      _buildHeaderCell("Amount"),
                      _buildHeaderCell("Action", true),
                    ],
                    bodyChildren: [
                      ...leadRow.map((row) => _buildDataRow(context, row)),
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
        padding: const .symmetric(horizontal: 8),
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
                        MenuButton(child: Text("Copy payment ID")),
                        MenuButton(child: Text("View customer")),
                        MenuButton(child: Text("View payment details")),
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

  TableRow _buildDataRow(BuildContext context, LeadsRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.status),
        _buildCell(row.email),
        _buildCell(row.amount),
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

class LeadsRow {
  final String status;
  final String email;
  final String amount;

  LeadsRow({required this.status, required this.email, required this.amount});
}
