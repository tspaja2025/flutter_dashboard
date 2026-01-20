import 'package:shadcn_flutter/shadcn_flutter.dart';

class ApiKeysAppScreen extends StatefulWidget {
  const ApiKeysAppScreen({super.key});

  @override
  State<ApiKeysAppScreen> createState() => ApiKeysAppScreenState();
}

class ApiKeysAppScreenState extends State<ApiKeysAppScreen> {
  CheckboxState _state = CheckboxState.unchecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Api Keys App").bold().large()]),

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
                    children: [const Text("Developer Plan").semiBold()],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Successful conversions").muted().small(),
                      const SizedBox(height: 4),
                      const Text("1204").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Failed conversions").muted().small(),
                      const SizedBox(height: 4),
                      const Text("23").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("API Calls").muted().small(),
                      const SizedBox(height: 4),
                      const Text("4328").semiBold(),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextField(placeholder: const Text("Filter api keys...")),
              ),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.plus),
                child: const Text("Create Api Key"),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Table(
            columnWidths: {0: FixedTableSize(48)},
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
                  _buildHeaderCell("Api Key"),
                  _buildHeaderCell("Created At"),
                  _buildHeaderCell("Updated At"),
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
                  _buildCell("Production API Key"),
                  _buildCell("9e...f62"),
                  _buildCell("Jan 19, 2025"),
                  _buildCell("Jan 20, 2025"),
                  _buildCell("Active"),
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
                                      MenuButton(child: Text("Actions")),
                                      MenuButton(child: Text("Rename")),
                                      MenuButton(child: Text("Regenerate Key")),
                                      MenuButton(child: Text("Enable")),
                                      MenuButton(child: Text("Revoke")),
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
                  _buildCell("Development API Key"),
                  _buildCell("9e...f62"),
                  _buildCell("Jan 19, 2025"),
                  _buildCell("Jan 20, 2025"),
                  _buildCell("Inactive"),
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
                                      MenuButton(child: Text("Actions")),
                                      MenuButton(child: Text("Rename")),
                                      MenuButton(child: Text("Regenerate Key")),
                                      MenuButton(child: Text("Enable")),
                                      MenuButton(child: Text("Revoke")),
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
                  _buildCell("Production Test"),
                  _buildCell("9e...f62"),
                  _buildCell("Jan 19, 2025"),
                  _buildCell("Jan 20, 2025"),
                  _buildCell("Expired"),
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
                                      MenuButton(child: Text("Actions")),
                                      MenuButton(child: Text("Rename")),
                                      MenuButton(child: Text("Regenerate Key")),
                                      MenuButton(child: Text("Enable")),
                                      MenuButton(child: Text("Revoke")),
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
