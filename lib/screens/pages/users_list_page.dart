import 'package:shadcn_flutter/shadcn_flutter.dart';

class UsersListPageScreen extends StatefulWidget {
  const UsersListPageScreen({super.key});

  @override
  State<UsersListPageScreen> createState() => UsersListPageScreenState();
}

class UsersListPageScreenState extends State<UsersListPageScreen> {
  CheckboxState _state = CheckboxState.unchecked;
  String? selectedValue;

  final usersList = [
    UsersListRow(
      name: "Stern Thireau",
      role: "Construction Foreman",
      plan: "Basic",
      email: "stren@thireau.com",
      country: "Portugal",
      status: "Active",
    ),
    UsersListRow(
      name: "Ford McKibbin",
      role: "Project Manager",
      plan: "Team",
      email: "ford@mckibbin.com",
      country: "Mexico",
      status: "Pending",
    ),
    UsersListRow(
      name: "Foss Roglieri",
      role: "Construction Expeditor",
      plan: "Basic",
      email: "foss@roglieri.com",
      country: "Brazil",
      status: "Active",
    ),
    UsersListRow(
      name: "Maurits Elgey",
      role: "Construction manager",
      plan: "Enterprise",
      email: "maurits@elgey.com",
      country: "Poland",
      status: "Active",
    ),
    UsersListRow(
      name: "Gun Kaasmann",
      role: "Construction Foreman",
      plan: "Team",
      email: "gun@kassmann.com",
      country: "Russia",
      status: "Pending",
    ),
    UsersListRow(
      name: "Edmund McCrae",
      role: "Project Manager",
      plan: "Team",
      email: "edmund@mccrae.com",
      country: "Poland",
      status: "Pending",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("Users List Page").bold().large(),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.plus),
                child: const Text("Add New User"),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            spacing: 8,
            children: [
              SizedBox(
                width: 200,
                child: TextField(placeholder: const Text("Search users...")),
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
                    selectedValue = value;
                  });
                },
                value: selectedValue,
                placeholder: const Text("Status"),
                popup: const SelectPopup(
                  items: SelectItemList(
                    children: [
                      SelectItemButton(value: "select", child: Text("Select")),
                      SelectItemButton(value: "select", child: Text("Select")),
                      SelectItemButton(value: "select", child: Text("Select")),
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
                    selectedValue = value;
                  });
                },
                value: selectedValue,
                placeholder: const Text("Plan"),
                popup: const SelectPopup(
                  items: SelectItemList(
                    children: [
                      SelectItemButton(value: "select", child: Text("Select")),
                      SelectItemButton(value: "select", child: Text("Select")),
                      SelectItemButton(value: "select", child: Text("Select")),
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
                    selectedValue = value;
                  });
                },
                value: selectedValue,
                placeholder: const Text("Role"),
                popup: const SelectPopup(
                  items: SelectItemList(
                    children: [
                      SelectItemButton(value: "select", child: Text("Select")),
                      SelectItemButton(value: "select", child: Text("Select")),
                      SelectItemButton(value: "select", child: Text("Select")),
                    ],
                  ),
                ).call,
              ),
            ],
          ),

          const SizedBox(height: 16),

          Table(
            columnWidths: {0: FixedTableSize(48), 2: FixedTableSize(220)},
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
                  _buildHeaderCell("Name"),
                  _buildHeaderCell("Role"),
                  _buildHeaderCell("Plan"),
                  _buildHeaderCell("Email"),
                  _buildHeaderCell("Country"),
                  _buildHeaderCell("Status"),
                  _buildHeaderCell("Action", true),
                ],
              ),

              // Body rows
              ...usersList.map((row) => _buildDataRow(context, row)),
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

  TableRow _buildDataRow(BuildContext context, UsersListRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.name),
        _buildCell(row.role),
        _buildCell(row.plan),
        _buildCell(row.email),
        _buildCell(row.country),
        _buildCell(row.status),
        _actionCell(context),
      ],
    );
  }
}

class UsersListRow {
  final String name;
  final String role;
  final String plan;
  final String email;
  final String country;
  final String status;

  UsersListRow({
    required this.name,
    required this.role,
    required this.plan,
    required this.email,
    required this.country,
    required this.status,
  });
}
