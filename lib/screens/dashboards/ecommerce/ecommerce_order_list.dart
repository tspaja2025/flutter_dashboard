import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceOrderListScreen extends StatefulWidget {
  const EcommerceOrderListScreen({super.key});

  @override
  State<EcommerceOrderListScreen> createState() =>
      EcommerceOrderListScreenState();
}

class EcommerceOrderListScreenState extends State<EcommerceOrderListScreen> {
  int index = 0;
  String? statusValue;
  String? categoryValue;
  CheckboxState _state = CheckboxState.unchecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              const Text("Order list").bold().large(),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.plus),
                child: const Text("Create Order"),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Tabs(
            index: index,
            children: const [
              TabItem(child: Text("All")),
              TabItem(child: Text("Completed")),
              TabItem(child: Text("Processed")),
              TabItem(child: Text("Returned")),
              TabItem(child: Text("Canceled")),
            ],
            onChanged: (int value) {
              setState(() {
                index = value;
              });
            },
          ),

          const SizedBox(height: 16),

          Row(
            spacing: 8,
            children: [
              SizedBox(
                width: 200,
                child: TextField(placeholder: const Text("Search orders...")),
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
                    statusValue = value;
                  });
                },
                value: statusValue,
                placeholder: const Text("Status"),
                popup: const SelectPopup(
                  items: SelectItemList(
                    children: [
                      SelectItemButton(
                        value: "Pending",
                        child: Text("Pending"),
                      ),
                      SelectItemButton(
                        value: "Completed",
                        child: Text("Completed"),
                      ),
                      SelectItemButton(
                        value: "Shipped",
                        child: Text("Shipped"),
                      ),
                      SelectItemButton(
                        value: "Delivered",
                        child: Text("Delivered"),
                      ),
                    ],
                  ),
                ).call,
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
                    categoryValue = value;
                  });
                },
                value: categoryValue,
                placeholder: const Text("Category"),
                popup: const SelectPopup(
                  items: SelectItemList(
                    children: [
                      SelectItemButton(value: "Beauty", child: Text("Beauty")),
                      SelectItemButton(
                        value: "Technology",
                        child: Text("Technology"),
                      ),
                      SelectItemButton(value: "Food", child: Text("Food")),
                      SelectItemButton(
                        value: "Home Appliances",
                        child: Text("Home Appliances"),
                      ),
                    ],
                  ),
                ).call,
              ),
            ],
          ),

          const SizedBox(height: 16),

          Table(
            columnWidths: {
              0: FixedTableSize(48),
              1: FixedTableSize(48),
              3: FixedTableSize(150),
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
                  _buildHeaderCell("#"),
                  _buildHeaderCell("Product"),
                  _buildHeaderCell("Price"),
                  _buildHeaderCell("Customer"),
                  _buildHeaderCell("Date"),
                  _buildHeaderCell("Type"),
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
                  _buildCell("# 1"),
                  _buildCell("Sport Shoes"),
                  _buildCell("\$316.00"),
                  _buildCell("Liam Johnson"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Sale"),
                  _buildCell("Pending"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
                  _buildCell("# 2"),
                  _buildCell("Black T-Shirt"),
                  _buildCell("\$316.00"),
                  _buildCell("Emma Brown"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Sale"),
                  _buildCell("Completed"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
                  _buildCell("# 3"),
                  _buildCell("Jeans"),
                  _buildCell("\$316.00"),
                  _buildCell("Noah Williams"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Return"),
                  _buildCell("Pending"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
                  _buildCell("# 4"),
                  _buildCell("Red Sneakers"),
                  _buildCell("\$316.00"),
                  _buildCell("Olivia Garcia"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Sale"),
                  _buildCell("Shipped"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
                  _buildCell("# 5"),
                  _buildCell("Red Scarf"),
                  _buildCell("\$316.00"),
                  _buildCell("Elijah Jones"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Sale"),
                  _buildCell("Delivered"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
                  _buildCell("# 6"),
                  _buildCell("Kitchen Accessory"),
                  _buildCell("\$316.00"),
                  _buildCell("Ava Miller"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Return"),
                  _buildCell("Pending"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
                  _buildCell("# 7"),
                  _buildCell("Bicycle"),
                  _buildCell("\$316.00"),
                  _buildCell("James Martinez"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Sale"),
                  _buildCell("Completed"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
                  _buildCell("# 8"),
                  _buildCell("Sports Shoes"),
                  _buildCell("\$316.00"),
                  _buildCell("Sophia Anderson"),
                  _buildCell("Jan 27, 2026"),
                  _buildCell("Sale"),
                  _buildCell("Shipped"),
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
                                      MenuButton(child: Text("Order Details")),
                                      MenuButton(child: Text("Edit")),
                                      MenuButton(child: Text("Delete")),
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
