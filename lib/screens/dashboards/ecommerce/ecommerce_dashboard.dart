import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceDashboardScreen extends StatelessWidget {
  const EcommerceDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("E-Commerce Dashboard").bold().large()]),

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
                      const Text("Congratulations Tspaja").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Best seller of the month").muted().small(),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("\$15,231.89").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "+65% from last month",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            child: const Text("View Sales"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Padding(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text(
                              "Monthly recurring revenue",
                            ).muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$34.1K").semiBold(),
                          ],
                        ),
                      ),

                      const Divider(),

                      Padding(
                        padding: const .all(8),
                        child: Row(
                          mainAxisAlignment: .end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              trailing: const Icon(LucideIcons.arrowRight),
                              child: const Text("View More"),
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
                  padding: const .all(0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Padding(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Users").muted().small(),
                            const SizedBox(height: 4),
                            const Text("500.1K").semiBold(),
                          ],
                        ),
                      ),

                      const Divider(),

                      Padding(
                        padding: const .all(8),
                        child: Row(
                          mainAxisAlignment: .end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              trailing: const Icon(LucideIcons.arrowRight),
                              child: const Text("View More"),
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
                  padding: const .all(0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Padding(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("User growth").muted().small(),
                            const SizedBox(height: 4),
                            const Text("11.3%").semiBold(),
                          ],
                        ),
                      ),

                      const Divider(),

                      Padding(
                        padding: const .all(8),
                        child: Row(
                          mainAxisAlignment: .end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              trailing: const Icon(LucideIcons.arrowRight),
                              child: const Text("View More"),
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
                      const Text("Total Revenue").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Income in the last 28 days").muted().small(),
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
                              const Text("Returning Rate").muted().small(),
                              const SizedBox(height: 4),
                              const Text("\$42,379").semiBold(),
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
                              const Text("Sales by Location").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "Income in the last 28 days",
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

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("Canada"),
                          const Spacer(),
                          const Text("85%"),
                        ],
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 85, min: 0, max: 100),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("Greenland"),
                          const Spacer(),
                          const Text("80%"),
                        ],
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 80, min: 0, max: 100),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("Russia"),
                          const Spacer(),
                          const Text("63%"),
                        ],
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 63, min: 0, max: 100),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("China"),
                          const Spacer(),
                          const Text("60%"),
                        ],
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 60, min: 0, max: 100),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("Australia"),
                          const Spacer(),
                          const Text("45%"),
                        ],
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 45, min: 0, max: 100),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Text("Greece"),
                          const Spacer(),
                          const Text("40%"),
                        ],
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: Progress(progress: 40, min: 0, max: 100),
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
                    children: [const Text("Store Visits by Source").semiBold()],
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
                              const Text("Customer Reviews").semiBold(),
                              const SizedBox(height: 4),
                              const Text(
                                "Based on 5,500 verified purchases",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            trailing: const Icon(LucideIcons.chevronRight),
                            child: const Text("View All"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("5"),
                          const Icon(LucideIcons.star, size: 14),
                          Expanded(
                            child: Progress(
                              progress: 4000,
                              min: 0,
                              max: 5000,
                              color: Colors.green,
                            ),
                          ),
                          const Text("4000"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("4"),
                          const Icon(LucideIcons.star, size: 14),
                          Expanded(
                            child: Progress(
                              progress: 2100,
                              min: 0,
                              max: 5000,
                              color: Colors.teal,
                            ),
                          ),
                          const Text("2100"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("3"),
                          const Icon(LucideIcons.star, size: 14),
                          Expanded(
                            child: Progress(
                              progress: 800,
                              min: 0,
                              max: 5000,
                              color: Colors.yellow,
                            ),
                          ),
                          const Text("800"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("2"),
                          const Icon(LucideIcons.star, size: 14),
                          Expanded(
                            child: Progress(
                              progress: 631,
                              min: 0,
                              max: 5000,
                              color: Colors.orange,
                            ),
                          ),
                          const Text("631"),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          const Text("1"),
                          const Icon(LucideIcons.star, size: 14),
                          Expanded(
                            child: Progress(
                              progress: 344,
                              min: 0,
                              max: 5000,
                              color: Colors.red,
                            ),
                          ),
                          const Text("344"),
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
                        children: [
                          const Text("Recent Orders").semiBold(),
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

                      const SizedBox(height: 16),

                      SizedBox(
                        width: 200,
                        child: TextField(
                          placeholder: const Text("Filter orders..."),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Table(
                        columnWidths: {
                          0: FixedTableSize(48),
                          1: FixedTableSize(150),
                          2: FixedTableSize(140),
                        },
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              _buildHeaderCell("ID"),
                              _buildHeaderCell("Customer"),
                              _buildHeaderCell("Product"),
                              _buildHeaderCell("Amount"),
                              _buildHeaderCell("Status"),
                              _buildHeaderCell("Action", true),
                            ],
                          ),

                          // Body rows
                          TableRow(
                            cells: [
                              _buildCell("# 1"),
                              _buildCell("Theodore Bell"),
                              _buildCell("Tire Doodad"),
                              _buildCell("\$316.00"),
                              _buildCell("Processing"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("# 2"),
                              _buildCell("Amelia Grant"),
                              _buildCell("Engine Kit Kat"),
                              _buildCell("\$316.00"),
                              _buildCell("Paid"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("# 3"),
                              _buildCell("Eleanor Ward"),
                              _buildCell("Brake Pad"),
                              _buildCell("\$316.00"),
                              _buildCell("Success"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("# 4"),
                              _buildCell("Henry Carter"),
                              _buildCell("Fuel Pump"),
                              _buildCell("\$316.00"),
                              _buildCell("Processing"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("# 5"),
                              _buildCell("Olivia Harris"),
                              _buildCell("Steering Wheel"),
                              _buildCell("\$316.00"),
                              _buildCell("Failed"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("# 6"),
                              _buildCell("James Robinson"),
                              _buildCell("Air Filter"),
                              _buildCell("\$316.00"),
                              _buildCell("Paid"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("# 7"),
                              _buildCell("Sophia Martinez"),
                              _buildCell("Oil Filter"),
                              _buildCell("\$316.00"),
                              _buildCell("Success"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("# 8"),
                              _buildCell("Liam Thompson"),
                              _buildCell("Radiator Cap"),
                              _buildCell("\$316.00"),
                              _buildCell("Processing"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
              Expanded(
                flex: 2,
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Best Selling Products").semiBold(),
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

                      const SizedBox(height: 16),

                      SizedBox(
                        width: 200,
                        child: TextField(
                          placeholder: const Text("Filter products..."),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Table(
                        columnWidths: {
                          0: FixedTableSize(48),
                          1: FixedTableSize(150),
                          2: FixedTableSize(140),
                        },
                        defaultRowHeight: FixedTableSize(48),

                        rows: [
                          // Header row
                          TableRow(
                            cells: [
                              _buildHeaderCell("Product"),
                              _buildHeaderCell("Sold"),
                              _buildHeaderCell("Sales"),
                              _buildHeaderCell("Action", true),
                            ],
                          ),

                          // Body rows
                          TableRow(
                            cells: [
                              _buildCell("Sport Shoes"),
                              _buildCell("\$316.00"),
                              _buildCell("10"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("Black T-Shirt"),
                              _buildCell("\$316.00"),
                              _buildCell("20"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("Jeans"),
                              _buildCell("\$316.00"),
                              _buildCell("15"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("Red Sneakers"),
                              _buildCell("\$316.00"),
                              _buildCell("40"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("Red Scarf"),
                              _buildCell("\$316.00"),
                              _buildCell("37"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("Kitchen Accessory"),
                              _buildCell("\$316.00"),
                              _buildCell("18"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("Bicycle"),
                              _buildCell("\$316.00"),
                              _buildCell("25"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
                              _buildCell("Sports Shoes"),
                              _buildCell("\$316.00"),
                              _buildCell("10"),
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
                                                    child: Text(
                                                      "Copy order ID",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View customer",
                                                    ),
                                                  ),
                                                  MenuButton(
                                                    child: Text(
                                                      "View payment details",
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
