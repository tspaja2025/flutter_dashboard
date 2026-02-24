import 'package:shadcn_flutter/shadcn_flutter.dart';

class TasksAppScreen extends StatefulWidget {
  const TasksAppScreen({super.key});

  @override
  State<TasksAppScreen> createState() => TasksAppScreenState();
}

class TasksAppScreenState extends State<TasksAppScreen> {
  CheckboxState _state = CheckboxState.unchecked;

  final tasks = [
    TasksRow(
      task: "TASK-01",
      title: "Design homepage layout",
      status: "In Progress",
      priority: "Medium",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            spacing: 8,
            children: [
              const Text("Tasks App").bold().large(),
              SizedBox(
                width: 200,
                child: TextField(
                  placeholder: const Text("Search notes"),
                  features: [
                    InputFeature.leading(
                      StatedWidget.builder(
                        builder: (context, states) {
                          if (states.hovered) {
                            return const Icon(LucideIcons.search);
                          } else {
                            return const Icon(
                              LucideIcons.search,
                            ).iconMutedForeground();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Builder(
                builder: (context) {
                  return OutlineButton(
                    onPressed: () {
                      showDropdown(
                        context: context,
                        builder: (context) {
                          return const DropdownMenu(
                            children: [
                              MenuButton(child: Text("Backlog")),
                              MenuButton(child: Text("Todo")),
                              MenuButton(child: Text("In Progress")),
                              MenuLabel(child: Text("Done")),
                              MenuButton(child: Text("Canceled")),
                            ],
                          );
                        },
                      );
                    },
                    leading: const Icon(LucideIcons.plus),
                    child: const Text("Status"),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  return OutlineButton(
                    onPressed: () {
                      showDropdown(
                        context: context,
                        builder: (context) {
                          return const DropdownMenu(
                            children: [
                              MenuButton(child: Text("High")),
                              MenuButton(child: Text("Medium")),
                              MenuButton(child: Text("Low")),
                            ],
                          );
                        },
                      );
                    },
                    leading: const Icon(LucideIcons.plus),
                    child: const Text("Priority"),
                  );
                },
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
                              MenuButton(child: Text("Title")),
                              MenuButton(child: Text("Status")),
                              MenuButton(child: Text("Priority")),
                            ],
                          );
                        },
                      );
                    },
                    leading: const Icon(LucideIcons.slidersHorizontal),
                    child: const Text("View"),
                  );
                },
              ),
              PrimaryButton(onPressed: () {}, child: const Text("Add Task")),
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
                  _buildHeaderCell("Task"),
                  _buildHeaderCell("Title"),
                  _buildHeaderCell("Status"),
                  _buildHeaderCell("Priority"),
                  _buildHeaderCell("Action", true),
                ],
              ),

              // Body rows
              ...tasks.map((row) => _buildDataRow(context, row)),
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
                        MenuButton(child: Text("Edit")),
                        MenuButton(child: Text("Make a copy")),
                        MenuButton(child: Text("Favorite")),
                        MenuDivider(),
                        MenuButton(child: Text("Labels")),
                        MenuDivider(),
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

  TableRow _buildDataRow(BuildContext context, TasksRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.task),
        _buildCell(row.title),
        _buildCell(row.status),
        _buildCell(row.priority),
        _actionCell(context),
      ],
    );
  }
}

class TasksRow {
  final String task;
  final String title;
  final String status;
  final String priority;

  TasksRow({
    required this.task,
    required this.title,
    required this.status,
    required this.priority,
  });
}
