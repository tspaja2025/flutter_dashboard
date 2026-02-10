import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsBillingPageScreen extends StatelessWidget {
  const SettingsBillingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 800,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  const Text("Settings Account Page").bold().large(),
                  const SizedBox(height: 4),
                  const Text(
                    "Manage your account settings and set e-mail preferences.",
                  ).muted().small(),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: SizedBox(
              width: 800,
              child: Card(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        const Text("Billing").semiBold(),
                        const Text(
                          "Billing monthly | next Payment on 10/02/2026",
                        ).muted().small(),
                      ],
                    ),
                    const Spacer(),
                    PrimaryButton(
                      onPressed: () {},
                      child: const Text("Change plan"),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: SizedBox(
              width: 800,
              child: Card(
                child: Column(
                  children: [
                    const Text("Payment Method").semiBold(),

                    const SizedBox(height: 16),

                    OutlinedContainer(
                      padding: const .all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Carolyn Perkins **** 1234"),
                              const Text("Expired Jan 2026"),
                            ],
                          ),
                          const Spacer(),
                          IconButton.outline(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.pencil),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    OutlinedContainer(
                      padding: const .all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Carolyn Perkins **** 5678"),
                              const Text("Expired Jan 2026"),
                            ],
                          ),
                          const Spacer(),
                          IconButton.outline(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.pencil),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    SizedBox(
                      width: double.infinity,
                      child: OutlineButton(
                        onPressed: () {},
                        alignment: .center,
                        leading: const Icon(LucideIcons.plus),
                        child: const Text("Add payment method"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: SizedBox(
              width: 800,
              child: Card(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    const Text("Transaction history").semiBold(),

                    const SizedBox(height: 16),

                    Table(
                      columnWidths: {
                        0: FixedTableSize(100),
                        1: FixedTableSize(225),
                        2: FixedTableSize(76),
                        3: FixedTableSize(110),
                      },
                      defaultRowHeight: FixedTableSize(48),

                      rows: [
                        // Header row
                        TableRow(
                          cells: [
                            _buildHeaderCell("Reference"),
                            _buildHeaderCell("Product"),
                            _buildHeaderCell("Status"),
                            _buildHeaderCell("Date"),
                            _buildHeaderCell("Amount", true),
                          ],
                        ),

                        // Body rows
                        TableRow(
                          cells: [
                            _buildCell("#1"),
                            _buildCell("Mock premium pack"),
                            _buildCell("Pending"),
                            _buildCell("10/02/2026"),
                            _buildCell("\$316.00", true),
                          ],
                        ),

                        TableRow(
                          cells: [
                            _buildCell("#2"),
                            _buildCell("Enterprise plan subscription"),
                            _buildCell("Paid"),
                            _buildCell("10/02/2026"),
                            _buildCell("\$316.00", true),
                          ],
                        ),

                        TableRow(
                          cells: [
                            _buildCell("#3"),
                            _buildCell("Business board pro licence"),
                            _buildCell("Paid"),
                            _buildCell("10/02/2026"),
                            _buildCell("\$316.00", true),
                          ],
                        ),

                        TableRow(
                          cells: [
                            _buildCell("#4"),
                            _buildCell("Custom integration package"),
                            _buildCell("Failed"),
                            _buildCell("10/02/2026"),
                            _buildCell("\$316.00", true),
                          ],
                        ),

                        TableRow(
                          cells: [
                            _buildCell("#5"),
                            _buildCell("Developer toolkit license"),
                            _buildCell("Paid"),
                            _buildCell("10/02/2026"),
                            _buildCell("\$316.00", true),
                          ],
                        ),

                        TableRow(
                          cells: [
                            _buildCell("#6"),
                            _buildCell("Support package renewal"),
                            _buildCell("Paid"),
                            _buildCell("10/02/2026"),
                            _buildCell("\$316.00", true),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
