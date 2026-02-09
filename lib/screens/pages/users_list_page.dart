import 'package:shadcn_flutter/shadcn_flutter.dart';

class UsersListPageScreen extends StatefulWidget {
  const UsersListPageScreen({super.key});

  @override
  State<UsersListPageScreen> createState() => UsersListPageScreenState();
}

class UsersListPageScreenState extends State<UsersListPageScreen> {
  CheckboxState _state = CheckboxState.unchecked;
  String? selectedValue;

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
                  _buildCell("Kenneth Thompson"),
                  _buildCell("kenneth@thompson.com"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
                  _buildCell("Abraham Lincoln"),
                  _buildCell("abraham@lincoln.com"),
                  _buildCell("\$242.00"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
                  _buildCell("Monserrat Rodriguez"),
                  _buildCell("monserrat@rodriguez.com"),
                  _buildCell("\$837.00"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
                  _buildCell("Silas Johnson"),
                  _buildCell("silas@johnson.com"),
                  _buildCell("\$874.00"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
                  _buildCell("Carmella DeVito"),
                  _buildCell("carmella@devito.com"),
                  _buildCell("\$721.00"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
                  _buildCell("Maria Garcia"),
                  _buildCell("maria@garcia.com"),
                  _buildCell("\$529.00"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
                  _buildCell("James Wilson"),
                  _buildCell("james@wilson.com"),
                  _buildCell("\$438.00"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
                  _buildCell("Sarah Jones"),
                  _buildCell("sarah@jones.com"),
                  _buildCell("\$692.00"),
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
                                      MenuButton(child: Text("View details")),
                                      MenuButton(
                                        child: Text("Download receipt"),
                                      ),
                                      MenuButton(
                                        child: Text("Contact customer"),
                                      ),
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
}
