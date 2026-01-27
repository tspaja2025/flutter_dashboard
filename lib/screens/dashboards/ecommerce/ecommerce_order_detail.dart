import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceOrderDetailScreen extends StatelessWidget {
  const EcommerceOrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            spacing: 8,
            children: [
              IconButton.outline(
                onPressed: () {},
                icon: const Icon(LucideIcons.chevronLeft),
              ),
              const Text("Order detail").bold().large(),
              const Spacer(),
              OutlineButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.printer),
                child: const Text("Print"),
              ),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.pencil),
                child: const Text("Edit"),
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
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Order ORD-1").large().bold(),
                      const Text("Placed on 2026-27-01").muted(),

                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),

                      const Text("Customer Information"),
                      const SizedBox(height: 4),
                      const Text("Alice Johnson").muted().small(),
                      const SizedBox(height: 4),
                      const Text("alice@johnson.com").muted().small(),
                      const SizedBox(height: 4),
                      const Text("123 St, Somewhere, AN 12345").muted().small(),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("Payment Method"),
                                const Text("Visa ending in **** 1234").muted(),
                              ],
                            ),
                            const Spacer(),
                            IconButton.outline(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.pencilLine),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Order Summary").large().bold(),

                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Text("Subtotal"),
                          const Spacer(),
                          const Text("\$101.97"),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Text("Shipping"),
                          const Spacer(),
                          const Text("\$10.00"),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Text("Total").bold(),
                          const Spacer(),
                          const Text("\$111.97").bold(),
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
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Delivery Status").large().bold(),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 25, min: 0, max: 100),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Order Items").large().bold(),

                      const SizedBox(height: 16),

                      Table(
                        columnWidths: {
                          0: FixedTableSize(170),
                          1: FixedTableSize(150),
                          2: FixedTableSize(140),
                        },
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              _buildHeaderCell("Product"),
                              _buildHeaderCell("Quantity"),
                              _buildHeaderCell("Price"),
                              _buildHeaderCell("Total", true),
                            ],
                          ),

                          // Body rows
                          TableRow(
                            cells: [
                              _buildCell("Sport Shoes"),
                              _buildCell("2"),
                              _buildCell("\$316.00"),
                              _buildCell("\$316.00", true),
                            ],
                          ),
                          TableRow(
                            cells: [
                              _buildCell("Sport Shoes"),
                              _buildCell("1"),
                              _buildCell("\$316.00"),
                              _buildCell("\$316.00", true),
                            ],
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
