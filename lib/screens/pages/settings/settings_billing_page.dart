import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsBillingPageScreen extends StatefulWidget {
  const SettingsBillingPageScreen({super.key});

  @override
  State<SettingsBillingPageScreen> createState() =>
      SettingsBillingPageScreenState();
}

class SettingsBillingPageScreenState extends State<SettingsBillingPageScreen> {
  final transactionHistory = [
    TransactionHistoryRow(
      product: "Mock premium pack",
      status: "Pending",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Enterprise plan subscription",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Business board pro licence",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Custom integration package",
      status: "Failed",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Developer toolkit license",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Support package renewal",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
  ];

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
                        ...transactionHistory.map(
                          (row) => _buildDataRow(context, row),
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

  TableRow _buildDataRow(BuildContext context, TransactionHistoryRow row) {
    return TableRow(
      cells: [
        _buildCell(row.product),
        _buildCell(row.status),
        _buildCell(row.date),
        _buildCell(row.amount, true),
      ],
    );
  }
}

class TransactionHistoryRow {
  final String product;
  final String status;
  final String date;
  final String amount;

  TransactionHistoryRow({
    required this.product,
    required this.status,
    required this.date,
    required this.amount,
  });
}
