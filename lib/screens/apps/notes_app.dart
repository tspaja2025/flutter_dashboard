import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class NotesAppScreen extends StatefulWidget {
  const NotesAppScreen({super.key});

  @override
  State<NotesAppScreen> createState() => _NotesAppScreenState();
}

class _NotesAppScreenState extends State<NotesAppScreen> {
  int index = 0;
  CheckboxState _state = CheckboxState.unchecked;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Notes App").bold.large]),

        Row(
          children: [
            SizedBox(
              width: 256,
              child: PrimaryButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Add Note"),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 400),
                              child: const Text("Content"),
                            ),
                          ],
                        ),
                        actions: [
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.image),
                          ),
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.tag),
                          ),
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.archive),
                          ),
                          IconButton.ghost(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.x),
                          ),
                          PrimaryButton(
                            onPressed: () {},
                            child: const Text("Add Note"),
                          ),
                        ],
                      );
                    },
                  );
                },
                alignment: Alignment.center,
                leading: const Icon(LucideIcons.pencil),
                child: const Text("Add Note"),
              ),
            ),
            const SizedBox(width: 8),
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
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Toggle(
                  value: index == 0,
                  style: const ButtonStyle.outline(
                    density: ButtonDensity.compact,
                  ),
                  onChanged: (v) {
                    setState(() {
                      index = v ? 0 : -1;
                    });
                  },
                  child: const Icon(LucideIcons.layoutGrid),
                ).sized(width: 40, height: 40),
                const SizedBox(width: 8),
                Toggle(
                  value: index == 1,
                  style: const ButtonStyle.outline(
                    density: ButtonDensity.compact,
                  ),
                  onChanged: (v) {
                    setState(() {
                      index = v ? 1 : -1;
                    });
                  },
                  child: const Icon(LucideIcons.layoutList),
                ).sized(width: 40, height: 40),
              ],
            ),
          ],
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 240,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GhostButton(
                      onPressed: () {},
                      density: ButtonDensity.dense,
                      leading: const Icon(LucideIcons.pencil),
                      child: const Text("Notes"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      density: ButtonDensity.dense,
                      leading: const Icon(LucideIcons.archive),
                      child: const Text("Archive"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      density: ButtonDensity.dense,
                      leading: const Icon(LucideIcons.pencilLine),
                      child: const Text("Edit Labels"),
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),

                    GhostButton(
                      onPressed: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ],
                      ),
                      density: ButtonDensity.dense,
                      child: const Text("Family"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ],
                      ),
                      density: ButtonDensity.dense,
                      child: const Text("Tasks"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ],
                      ),
                      density: ButtonDensity.dense,
                      child: const Text("Personal"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ],
                      ),
                      density: ButtonDensity.dense,
                      child: const Text("Meetings"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ],
                      ),
                      density: ButtonDensity.dense,
                      child: const Text("Shopping"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ],
                      ),
                      density: ButtonDensity.dense,
                      child: const Text("Planning"),
                    ),
                    GhostButton(
                      onPressed: () {},
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                        ],
                      ),
                      density: ButtonDensity.dense,
                      child: const Text("Travel"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Mountain Sunset Photography",
                subtitle: "",
                children: [
                  const Text(
                    "Captured this beautiful sunset during our hiking trip. The colors were absolutely stunning!",
                  ).muted.small,
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Chip(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ],
                        ),
                        child: const Text("Family"),
                      ),
                      Chip(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ],
                        ),
                        child: const Text("Personal"),
                      ),
                    ],
                  ).gap(8),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardWidget(
                    title: "Weekly Grocery List",
                    subtitle: "",
                    children: [
                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Organic vegetables"),
                      ),
                      const SizedBox(height: 4),
                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Whole grain bread"),
                      ),
                      const SizedBox(height: 4),
                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Greek yogurt"),
                      ),
                      const SizedBox(height: 4),
                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Fresh fruits"),
                      ),
                      const SizedBox(height: 4),
                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Chicken breast"),
                      ),
                      const SizedBox(height: 4),
                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Quinoa"),
                      ),
                      const SizedBox(height: 4),
                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Almond milk"),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Chip(
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                ),
                              ],
                            ),
                            child: const Text("Personal"),
                          ),
                          Chip(
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                ),
                              ],
                            ),
                            child: const Text("Meetings"),
                          ),
                        ],
                      ).gap(8),
                    ],
                  ),
                  CardWidget(
                    title: "Project Milestones",
                    subtitle: "",
                    children: [
                      const Text(
                        "Q1 Goals: - Launch beta version - Gather user feedback - Implement core features - Performance optimization - Security audit - Documentation update",
                      ).muted.small,
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Chip(
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                ),
                              ],
                            ),
                            child: const Text("Tasks"),
                          ),
                        ],
                      ).gap(8),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Desert Road Trip Ideas",
                subtitle: "",
                children: [
                  const Text(
                    "Potential routes for our upcoming desert adventure. Need to plan stops and accommodation.",
                  ).muted.small,
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Chip(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ],
                        ),
                        child: const Text("Family"),
                      ),
                      Chip(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ],
                        ),
                        child: const Text("Personal"),
                      ),
                    ],
                  ).gap(8),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Weekly Grocery List",
                subtitle: "",
                children: [
                  Checkbox(
                    state: _state,
                    onChanged: (value) {
                      setState(() {
                        _state = value;
                      });
                    },
                    trailing: const Text("Paint living room"),
                  ),
                  const SizedBox(height: 4),
                  Checkbox(
                    state: _state,
                    onChanged: (value) {
                      setState(() {
                        _state = value;
                      });
                    },
                    trailing: const Text("Replace kitchen faucet"),
                  ),
                  const SizedBox(height: 4),
                  Checkbox(
                    state: _state,
                    onChanged: (value) {
                      setState(() {
                        _state = value;
                      });
                    },
                    trailing: const Text("Fix bathroom tiles"),
                  ),
                  const SizedBox(height: 4),
                  Checkbox(
                    state: _state,
                    onChanged: (value) {
                      setState(() {
                        _state = value;
                      });
                    },
                    trailing: const Text("Install new light fixtures"),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Chip(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                          ],
                        ),
                        child: const Text("Tasks"),
                      ),
                    ],
                  ).gap(8),
                ],
              ),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
