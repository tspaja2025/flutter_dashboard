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

  final orderList = [
    OrderListRow(
      id: "# 1",
      product: "Sport Shoes",
      price: "\$316.00",
      customer: "Liam Johnson",
      date: "Jan 27, 2026",
      type: "Sale",
      status: "Pending",
    ),
    OrderListRow(
      id: "# 2",
      product: "Black T-Shirt",
      price: "\$316.00",
      customer: "Emma Brown",
      date: "Jan 27, 2026",
      type: "Sale",
      status: "Completed",
    ),
    OrderListRow(
      id: "# 3",
      product: "Jeans",
      price: "\$316.00",
      customer: "Noah Williams",
      date: "Jan 27, 2026",
      type: "Return",
      status: "Pending",
    ),
    OrderListRow(
      id: "# 4",
      product: "Red Sneakers",
      price: "\$316.00",
      customer: "Olivia Garcia",
      date: "Jan 27, 2026",
      type: "Sale",
      status: "Shipped",
    ),
    OrderListRow(
      id: "# 5",
      product: "Red Scarf",
      price: "\$316.00",
      customer: "Elijah Jones",
      date: "Jan 27, 2026",
      type: "Sale",
      status: "Delivered",
    ),
    OrderListRow(
      id: "# 6",
      product: "Kitchen Accessory",
      price: "\$316.00",
      customer: "Ava Miller",
      date: "Jan 27, 2026",
      type: "Return",
      status: "Pending",
    ),
    OrderListRow(
      id: "# 7",
      product: "Bicycle",
      price: "\$316.00",
      customer: "James Martinez",
      date: "Jan 27, 2026",
      type: "Sale",
      status: "Completed",
    ),
    OrderListRow(
      id: "# 8",
      product: "Sports Shoes",
      price: "\$316.00",
      customer: "Sophia Anderson",
      date: "Jan 27, 2026",
      type: "Sale",
      status: "Shipped",
    ),
  ];

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
              ...orderList.map((row) => _buildDataRow(context, row)),
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
                        MenuButton(child: Text("Order details")),
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
    );
  }

  TableRow _buildDataRow(BuildContext context, OrderListRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.id),
        _buildCell(row.product),
        _buildCell(row.price),
        _buildCell(row.customer),
        _buildCell(row.date),
        _buildCell(row.type),
        _buildCell(row.status),
        _actionCell(context),
      ],
    );
  }
}

class OrderListRow {
  final String id;
  final String product;
  final String price;
  final String customer;
  final String date;
  final String type;
  final String status;

  OrderListRow({
    required this.id,
    required this.product,
    required this.price,
    required this.customer,
    required this.date,
    required this.type,
    required this.status,
  });
}
