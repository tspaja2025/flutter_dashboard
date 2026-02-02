import 'package:shadcn_flutter/shadcn_flutter.dart';

class KanbanBoardAppScreen extends StatefulWidget {
  const KanbanBoardAppScreen({super.key});

  @override
  State<KanbanBoardAppScreen> createState() => KanbanBoardAppScreenState();
}

class KanbanBoardAppScreenState extends State<KanbanBoardAppScreen> {
  int index = 0;

  List<SortableData<KanbanColumnItem>> todo = [
    const SortableData(
      KanbanColumnItem(
        title: "Integrate Stripe payment gateway",
        content: "Compile competitor landing page design for inspiration...",
        priority: "High",
      ),
    ),
    const SortableData(
      KanbanColumnItem(
        title: "Redesign marketing homepage",
        content: "Compile competitor landing page design for inspiration...",
        priority: "Medium",
      ),
    ),
    const SortableData(
      KanbanColumnItem(
        title: "Set up automated backups",
        content: "Compile competitor landing page design for inspiration...",
        priority: "Low",
      ),
    ),
    const SortableData(
      KanbanColumnItem(
        title: "Implement blog search functionality",
        content: "Compile competitor landing page design for inspiration...",
        priority: "Medium",
      ),
    ),
  ];

  List<SortableData<KanbanColumnItem>> inProgress = [
    const SortableData(
      KanbanColumnItem(
        title: "Dark mode toggle implementation",
        content: "Compile competitor landing page design for inspiration...",
        priority: "High",
      ),
    ),
    const SortableData(
      KanbanColumnItem(
        title: "Database schema refactoring",
        content: "Compile competitor landing page design for inspiration...",
        priority: "Medium",
      ),
    ),
    const SortableData(
      KanbanColumnItem(
        title: "Accessibility improvements",
        content: "Compile competitor landing page design for inspiration...",
        priority: "Low",
      ),
    ),
  ];

  List<SortableData<KanbanColumnItem>> done = [
    const SortableData(
      KanbanColumnItem(
        title: "Set up CI/CD pipeline",
        content: "Compile competitor landing page design for inspiration...",
        priority: "High",
      ),
    ),
    const SortableData(
      KanbanColumnItem(
        title: "Initial project setup",
        content: "Compile competitor landing page design for inspiration...",
        priority: "Medium",
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

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
                child: SortableLayer(
                  child: Row(
                    crossAxisAlignment: .start,
                    spacing: 16,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: Card(
                          child: SortableDropFallback<String>(
                            onAccept: (value) {
                              setState(() {
                                swapItemInLists(
                                  [todo, inProgress],
                                  value,
                                  inProgress,
                                  inProgress.length,
                                );
                              });
                            },
                            child: Column(
                              crossAxisAlignment: .stretch,
                              children: [
                                Row(
                                  children: [
                                    const Text("To Do"),
                                    const SizedBox(width: 8),
                                    PrimaryBadge(child: Text("${todo.length}")),
                                    const Spacer(),
                                    IconButton.ghost(
                                      onPressed: () {},
                                      icon: const Icon(
                                        LucideIcons.gripVertical,
                                      ),
                                    ),
                                    IconButton.ghost(
                                      onPressed: () {},
                                      icon: const Icon(LucideIcons.plus),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                for (int i = 0; i < todo.length; i++)
                                  Sortable<KanbanColumnItem>(
                                    data: todo[i],
                                    onAcceptTop: (value) {
                                      setState(() {
                                        swapItemInLists(
                                          [todo, inProgress],
                                          value,
                                          inProgress,
                                          i,
                                        );
                                      });
                                    },
                                    onAcceptBottom: (value) {
                                      setState(() {
                                        swapItemInLists(
                                          [todo, inProgress],
                                          value,
                                          inProgress,
                                          i + 1,
                                        );
                                      });
                                    },
                                    child: todo[i].data,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: Card(
                          child: SortableDropFallback<String>(
                            onAccept: (value) {
                              setState(() {
                                swapItemInLists(
                                  [todo, inProgress],
                                  value,
                                  inProgress,
                                  inProgress.length,
                                );
                              });
                            },
                            child: Column(
                              crossAxisAlignment: .stretch,
                              children: [
                                Row(
                                  children: [
                                    const Text("In Progress"),
                                    const SizedBox(width: 8),
                                    PrimaryBadge(
                                      child: Text("${inProgress.length}"),
                                    ),
                                    const Spacer(),
                                    IconButton.ghost(
                                      onPressed: () {},
                                      icon: const Icon(
                                        LucideIcons.gripVertical,
                                      ),
                                    ),
                                    IconButton.ghost(
                                      onPressed: () {},
                                      icon: const Icon(LucideIcons.plus),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                for (int i = 0; i < inProgress.length; i++)
                                  Sortable<KanbanColumnItem>(
                                    data: inProgress[i],
                                    onAcceptTop: (value) {
                                      setState(() {
                                        swapItemInLists(
                                          [todo, inProgress],
                                          value,
                                          inProgress,
                                          i,
                                        );
                                      });
                                    },
                                    onAcceptBottom: (value) {
                                      setState(() {
                                        swapItemInLists(
                                          [todo, inProgress],
                                          value,
                                          inProgress,
                                          i + 1,
                                        );
                                      });
                                    },
                                    child: inProgress[i].data,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: Card(
                          child: SortableDropFallback<String>(
                            onAccept: (value) {
                              setState(() {
                                swapItemInLists(
                                  [todo, inProgress],
                                  value,
                                  inProgress,
                                  inProgress.length,
                                );
                              });
                            },
                            child: Column(
                              crossAxisAlignment: .stretch,
                              children: [
                                Row(
                                  children: [
                                    const Text("Done"),
                                    const SizedBox(width: 8),
                                    PrimaryBadge(child: Text("${done.length}")),
                                    const Spacer(),
                                    IconButton.ghost(
                                      onPressed: () {},
                                      icon: const Icon(
                                        LucideIcons.gripVertical,
                                      ),
                                    ),
                                    IconButton.ghost(
                                      onPressed: () {},
                                      icon: const Icon(LucideIcons.plus),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                for (int i = 0; i < done.length; i++)
                                  Sortable<KanbanColumnItem>(
                                    data: done[i],
                                    onAcceptTop: (value) {
                                      setState(() {
                                        swapItemInLists(
                                          [todo, inProgress],
                                          value,
                                          inProgress,
                                          i,
                                        );
                                      });
                                    },
                                    onAcceptBottom: (value) {
                                      setState(() {
                                        swapItemInLists(
                                          [todo, inProgress],
                                          value,
                                          inProgress,
                                          i + 1,
                                        );
                                      });
                                    },
                                    child: done[i].data,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
