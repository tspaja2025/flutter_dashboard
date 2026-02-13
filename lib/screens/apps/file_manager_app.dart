import 'package:shadcn_flutter/shadcn_flutter.dart';

class FileManagerAppScreen extends StatefulWidget {
  const FileManagerAppScreen({super.key});

  @override
  State<FileManagerAppScreen> createState() => FileManagerAppScreenState();
}

class FileManagerAppScreenState extends State<FileManagerAppScreen> {
  CheckboxState _state = CheckboxState.unchecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            spacing: 8,
            children: [
              const Text("File Manager App").bold().large(),
              const Spacer(),
              SizedBox(
                width: 200,
                child: TextField(
                  placeholder: const Text("Search for files and folders..."),
                ),
              ),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.upload),
                child: const Text("Upload"),
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
                  _buildHeaderCell("Date"),
                  _buildHeaderCell("Size"),
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
                  _buildCell("Brand Styles Guide"),
                  _buildCell("13/02/2026"),
                  _buildCell("2.0MB"),
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
                                      MenuButton(child: Text("Compress")),
                                      MenuButton(child: Text("Archive")),
                                      MenuButton(child: Text("Share")),
                                      MenuDivider(),
                                      MenuButton(child: Text("Move")),
                                      MenuButton(child: Text("Copy")),
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
                  _buildCell("Brand Styles Guide"),
                  _buildCell("13/02/2026"),
                  _buildCell("2.0MB"),
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
                                      MenuButton(child: Text("Compress")),
                                      MenuButton(child: Text("Archive")),
                                      MenuButton(child: Text("Share")),
                                      MenuDivider(),
                                      MenuButton(child: Text("Move")),
                                      MenuButton(child: Text("Copy")),
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
                  _buildCell("Design"),
                  _buildCell("13/02/2026"),
                  _buildCell("2.0MB"),
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
                                      MenuButton(child: Text("Compress")),
                                      MenuButton(child: Text("Archive")),
                                      MenuButton(child: Text("Share")),
                                      MenuDivider(),
                                      MenuButton(child: Text("Move")),
                                      MenuButton(child: Text("Copy")),
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
                  _buildCell("Project Brief"),
                  _buildCell("13/02/2026"),
                  _buildCell("2.0MB"),
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
                                      MenuButton(child: Text("Compress")),
                                      MenuButton(child: Text("Archive")),
                                      MenuButton(child: Text("Share")),
                                      MenuDivider(),
                                      MenuButton(child: Text("Move")),
                                      MenuButton(child: Text("Copy")),
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
              const Text("0 of 4 row(s) selected."),
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
