import 'package:shadcn_flutter/shadcn_flutter.dart';

class KanbanBoardAppScreen extends StatefulWidget {
  const KanbanBoardAppScreen({super.key});

  @override
  State<KanbanBoardAppScreen> createState() => KanbanBoardAppScreenState();
}

class KanbanBoardAppScreenState extends State<KanbanBoardAppScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(children: [const Text("Kanban Board App").bold().large()]),

          const SizedBox(height: 16),

          Row(
            children: [
              Tabs(
                index: index,
                children: const [
                  TabItem(child: Text("Board")),
                  TabItem(child: Text("List")),
                  TabItem(child: Text("Table")),
                ],
                onChanged: (int value) {
                  setState(() {
                    index = value;
                  });
                },
              ),
              const Spacer(),
              SizedBox(
                width: 200,
                child: TextField(
                  placeholder: const Text("Search tasks"),
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
              const SizedBox(width: 8),
              Builder(
                builder: (context) {
                  return OutlineButton(
                    onPressed: () {
                      showDropdown(
                        context: context,
                        builder: (context) {
                          return const DropdownMenu(
                            children: [
                              MenuLabel(child: Text("Status")),
                              MenuButton(child: Text("Completed")),
                              MenuButton(child: Text("In Progress")),
                              MenuButton(child: Text("Not Started")),
                              MenuDivider(),
                              MenuLabel(child: Text("Priority")),
                              MenuButton(child: Text("High")),
                              MenuButton(child: Text("Medium")),
                              MenuButton(child: Text("Low")),
                              MenuDivider(),
                              MenuButton(child: Text("Clear Filters")),
                            ],
                          );
                        },
                      );
                    },
                    leading: const Icon(LucideIcons.slidersHorizontal),
                    child: const Text("Filters"),
                  );
                },
              ),
              const SizedBox(width: 8),
              PrimaryButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Add New Board"),
                        content: Column(
                          children: [
                            ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 400),
                              child: TextField(
                                placeholder: const Text("Enter board name"),
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          OutlineButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),
                          PrimaryButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Confirm"),
                          ),
                        ],
                      );
                    },
                  );
                },
                leading: const Icon(LucideIcons.plus),
                child: const Text("Add Board"),
              ),
            ],
          ),

          const SizedBox(height: 16),

          IndexedStack(
            index: index,
            children: [
              SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: .start,
                  spacing: 16,
                  children: [
                    KanbanColumn(
                      title: "To Do",
                      itemCount: "4",
                      children: [
                        KanbanColumnItem(
                          title: "Integrate Stripe payment gateway",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "High",
                        ),
                        const SizedBox(height: 8),
                        KanbanColumnItem(
                          title: "Redesign marketing homepage",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "Medium",
                        ),
                        const SizedBox(height: 8),
                        KanbanColumnItem(
                          title: "Set up automated backups",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "Low",
                        ),
                        const SizedBox(height: 8),
                        KanbanColumnItem(
                          title: "Implement blog search functionality",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "Medium",
                        ),
                      ],
                    ),
                    KanbanColumn(
                      title: "In Progress",
                      itemCount: "3",
                      children: [
                        KanbanColumnItem(
                          title: "Dark mode toggle implementation",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "High",
                        ),
                        const SizedBox(height: 8),
                        KanbanColumnItem(
                          title: "Database schema refactoring",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "Medium",
                        ),
                        const SizedBox(height: 8),
                        KanbanColumnItem(
                          title: "Accessibility improvements",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "Low",
                        ),
                      ],
                    ),
                    KanbanColumn(
                      title: "Done",
                      itemCount: "2",
                      children: [
                        KanbanColumnItem(
                          title: "Set up CI/CD pipeline",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "High",
                        ),
                        const SizedBox(height: 8),
                        KanbanColumnItem(
                          title: "Initial project setup",
                          content:
                              "Compile competitor landing page design for inspiration...",
                          priority: "Medium",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(children: [const Text("List")]),
              Column(children: [const Text("Table")]),
            ],
          ),
        ],
      ),
    );
  }
}

class KanbanColumn extends StatelessWidget {
  final String title;
  final String itemCount;
  final List<Widget> children;

  const KanbanColumn({
    super.key,
    required this.title,
    required this.itemCount,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Text(title),
                const SizedBox(width: 8),
                PrimaryBadge(child: Text(itemCount)),
                const Spacer(),
                IconButton.ghost(
                  onPressed: () {},
                  icon: const Icon(LucideIcons.gripVertical),
                ),
                IconButton.ghost(
                  onPressed: () {},
                  icon: const Icon(LucideIcons.plus),
                ),
              ],
            ),

            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}

class KanbanColumnItem extends StatelessWidget {
  final String title;
  final String content;
  final String priority;

  const KanbanColumnItem({
    super.key,
    required this.title,
    required this.content,
    required this.priority,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(title),
          const SizedBox(height: 4),
          Text(content).muted().small(),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          Chip(child: Text(priority)),
        ],
      ),
    );
  }
}
