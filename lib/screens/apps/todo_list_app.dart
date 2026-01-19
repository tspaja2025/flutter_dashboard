import 'package:shadcn_flutter/shadcn_flutter.dart';

class TodoListAppScreen extends StatefulWidget {
  const TodoListAppScreen({super.key});

  @override
  State<TodoListAppScreen> createState() => TodoListAppScreenState();
}

class TodoListAppScreenState extends State<TodoListAppScreen> {
  int tabIndex = 0;
  int toggleIndex = 0;
  CheckboxState _state = CheckboxState.unchecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Todo List App").bold().large()]),

          const SizedBox(height: 16),

          Row(
            spacing: 8,
            children: [
              Tabs(
                index: tabIndex,
                children: const [
                  TabItem(child: Text("All")),
                  TabItem(child: Text("Pending")),
                  TabItem(child: Text("In Progress")),
                  TabItem(child: Text("Completed")),
                ],
                onChanged: (int value) {
                  setState(() {
                    tabIndex = value;
                  });
                },
              ),
              const Spacer(),
              SizedBox(
                width: 200,
                child: TextField(
                  placeholder: const Text("Search tasks..."),
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
                  return IconButton.outline(
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
                    icon: const Icon(LucideIcons.slidersHorizontal),
                  );
                },
              ),
              Row(
                mainAxisSize: .min,
                children: [
                  Toggle(
                    value: toggleIndex == 0,
                    style: const ButtonStyle.outline(
                      density: ButtonDensity.compact,
                    ),
                    onChanged: (v) {
                      setState(() {
                        toggleIndex = v ? 0 : -1;
                      });
                    },
                    child: const Icon(LucideIcons.layoutGrid),
                  ).sized(width: 40, height: 40),
                  const SizedBox(width: 8),
                  Toggle(
                    value: toggleIndex == 1,
                    style: const ButtonStyle.outline(
                      density: ButtonDensity.compact,
                    ),
                    onChanged: (v) {
                      setState(() {
                        toggleIndex = v ? 1 : -1;
                      });
                    },
                    child: const Icon(LucideIcons.layoutList),
                  ).sized(width: 40, height: 40),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          OutlinedContainer(
            child: Padding(
              padding: const .all(16),
              child: Row(
                crossAxisAlignment: .start,
                children: [
                  Checkbox(
                    state: _state,
                    onChanged: (state) {
                      setState(() {
                        _state = state;
                      });
                    },
                  ),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Design homepage layout").large(),
                      const SizedBox(height: 4),
                      Row(
                        spacing: 8,
                        children: [
                          const Chip(child: Text("Emily Carter")),
                          const Chip(child: Text("Wiliam Smith")),
                          const Text("Jan 19, 2025"),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  PrimaryBadge(child: const Text("In Progress")),
                  const SizedBox(width: 8),
                  PrimaryBadge(child: const Text("High")),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          OutlinedContainer(
            child: Padding(
              padding: const .all(16),
              child: Row(
                crossAxisAlignment: .start,
                children: [
                  Checkbox(
                    state: _state,
                    onChanged: (state) {
                      setState(() {
                        _state = state;
                      });
                    },
                  ),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Conduct user interviews").large(),
                      const SizedBox(height: 4),
                      Row(
                        spacing: 8,
                        children: [
                          const Chip(child: Text("Emily Carter")),
                          const Chip(child: Text("Wiliam Smith")),
                          const Text("Jan 19, 2025"),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  PrimaryBadge(child: const Text("Pending")),
                  const SizedBox(width: 8),
                  PrimaryBadge(child: const Text("Medium")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
