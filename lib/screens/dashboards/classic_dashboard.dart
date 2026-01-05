import 'package:flutter/material.dart';

class ClassicDashboard extends StatefulWidget {
  const ClassicDashboard({super.key});

  @override
  State<ClassicDashboard> createState() => ClassicDashboardState();
}

class ClassicDashboardState extends State<ClassicDashboard> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              spacing: 8,
              children: [
                Text(
                  "Classic Dashboard",
                  style: TextTheme.of(
                    context,
                  ).titleLarge?.copyWith(fontWeight: .bold),
                ),
                const Spacer(),
                OutlinedButton(onPressed: () {}, child: const Text("Date")),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  label: const Text("Download"),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Team members",
                            style: TextTheme.of(
                              context,
                            ).titleMedium?.copyWith(fontWeight: .bold),
                          ),
                          Text(
                            "Invite your team members to collaborate.",
                            style: TextTheme.of(context).titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Subscriptions",
                            style: TextTheme.of(
                              context,
                            ).titleMedium?.copyWith(fontWeight: .bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Total Revenue",
                            style: TextTheme.of(
                              context,
                            ).titleMedium?.copyWith(fontWeight: .bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Flex(
              direction: .horizontal,
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Team members",
                            style: TextTheme.of(
                              context,
                            ).titleMedium?.copyWith(fontWeight: .bold),
                          ),
                          Text(
                            "Invite your team members to collaborate.",
                            style: TextTheme.of(context).titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Card(
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Exercise Minutes",
                            style: TextTheme.of(
                              context,
                            ).titleMedium?.copyWith(fontWeight: .bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Flex(
              direction: .horizontal,
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  flex: 2,
                  child: Card(
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "Latest Payments",
                                    style: TextTheme.of(
                                      context,
                                    ).titleMedium?.copyWith(fontWeight: .bold),
                                  ),
                                  Text(
                                    "See recent payments from your customers here.",
                                    style: TextTheme.of(context).titleSmall,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 175,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Filter payments...",
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          Container(
                            decoration: BoxDecoration(
                              border: .all(
                                color: Divider.createBorderSide(context).color,
                              ),
                              borderRadius: .circular(12),
                            ),
                            child: Table(
                              columnWidths: {0: FixedColumnWidth(60)},
                              children: [
                                // Header
                                TableRow(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Divider.createBorderSide(
                                          context,
                                        ).color,
                                      ),
                                    ),
                                  ),
                                  children: [
                                    _buildHeaderCell(
                                      Checkbox(
                                        value: _isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _isChecked = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    _buildHeaderCell(
                                      const Text(
                                        "Customer",
                                        style: TextStyle(fontWeight: .bold),
                                      ),
                                    ),
                                    _buildHeaderCell(
                                      const Text(
                                        "Email",
                                        style: TextStyle(fontWeight: .bold),
                                      ),
                                    ),
                                    _buildHeaderCell(
                                      const Text(
                                        "Amount",
                                        style: TextStyle(fontWeight: .bold),
                                      ),
                                    ),
                                    _buildHeaderCell(
                                      const Text(
                                        "Status",
                                        style: TextStyle(fontWeight: .bold),
                                      ),
                                      isLastCell: true,
                                    ),
                                  ],
                                ),
                                // Body
                                TableRow(
                                  children: [
                                    _buildHeaderCell(
                                      Checkbox(
                                        value: _isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _isChecked = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    _buildHeaderCell(const Text("John Doe")),
                                    _buildHeaderCell(
                                      const Text("john@doe.com"),
                                    ),
                                    _buildHeaderCell(const Text("\$316.00")),
                                    _buildHeaderCell(
                                      Chip(
                                        padding: const .symmetric(
                                          horizontal: 8,
                                        ),
                                        labelPadding: const .all(0),
                                        label: Text(
                                          "Status",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      isLastCell: true,
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
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const .all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Payment Method",
                            style: TextTheme.of(
                              context,
                            ).titleMedium?.copyWith(fontWeight: .bold),
                          ),
                          Text(
                            "Add a new payment method to your account.",
                            style: TextTheme.of(context).titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCell(Widget child, {bool isLastCell = false}) {
    return TableCell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border(
            right: isLastCell
                ? BorderSide.none
                : BorderSide(color: Divider.createBorderSide(context).color),
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
