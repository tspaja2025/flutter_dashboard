import 'package:shadcn_flutter/shadcn_flutter.dart';

class MailAppScreen extends StatefulWidget {
  const MailAppScreen({super.key});

  @override
  State<MailAppScreen> createState() => MailAppScreenState();
}

class MailAppScreenState extends State<MailAppScreen> {
  int index = 0;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Mail App").bold().large()]),

          const SizedBox(height: 16),

          OutlinedContainer(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 144,
            child: Row(
              children: [
                Container(
                  width: 256,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Theme.of(context).colorScheme.border,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: .stretch,
                    children: [
                      Padding(
                        padding: const .all(16),
                        child: PrimaryButton(
                          onPressed: () {},
                          child: const Text("Compose"),
                        ),
                      ),
                      const Divider(),

                      Padding(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            PrimaryButton(
                              onPressed: () {},
                              leading: const Icon(LucideIcons.inbox),
                              child: const Text("Inbox"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: const Icon(LucideIcons.file),
                              child: const Text("Drafts"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: const Icon(LucideIcons.send),
                              child: const Text("Sent"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: const Icon(LucideIcons.archiveX),
                              child: const Text("Junk"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: const Icon(LucideIcons.trash2),
                              child: const Text("Trash"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: const Icon(LucideIcons.archive),
                              child: const Text("Archive"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),

                      Padding(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            GhostButton(
                              onPressed: () {},
                              leading: Column(
                                mainAxisAlignment: .center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: .circular(999),
                                    ),
                                  ),
                                ],
                              ),
                              child: const Text("Social"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: Column(
                                mainAxisAlignment: .center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: .circular(999),
                                    ),
                                  ),
                                ],
                              ),
                              child: const Text("Updates"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: Column(
                                mainAxisAlignment: .center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: .circular(999),
                                    ),
                                  ),
                                ],
                              ),
                              child: const Text("Forums"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: Column(
                                mainAxisAlignment: .center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: .circular(999),
                                    ),
                                  ),
                                ],
                              ),
                              child: const Text("Shopping"),
                            ),
                            GhostButton(
                              onPressed: () {},
                              leading: Column(
                                mainAxisAlignment: .center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: .circular(999),
                                    ),
                                  ),
                                ],
                              ),
                              child: const Text("Promotions"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 512,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Theme.of(context).colorScheme.border,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const .all(16),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            const Text("Inbox").large().bold(),
                            Tabs(
                              index: index,
                              children: const [
                                TabItem(child: Text("All")),
                                TabItem(child: Text("Unread")),
                              ],
                              onChanged: (int value) {
                                setState(() {
                                  index = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const Divider(),

                      Padding(
                        padding: const .all(16),
                        child: Column(
                          children: [
                            TextField(
                              placeholder: const Text("search..."),
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

                            const SizedBox(height: 16),

                            OutlinedContainer(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primaryForeground,
                              child: Padding(
                                padding: const .all(12),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text("William Smith").bold(),
                                        const Spacer(),
                                        const Text(
                                          "about 2 years ago",
                                        ).muted().small(),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    const Text("Meeting Tomorrow").small(),

                                    const SizedBox(height: 8),
                                    const Text(
                                      "Hi, let's have a meeting tomorrow to discuss the project. I've been reviewing the project details...",
                                    ),

                                    const SizedBox(height: 8),

                                    Row(
                                      spacing: 8,
                                      children: [
                                        const Chip(child: Text("meeting")),
                                        const Chip(child: Text("work")),
                                        const Chip(child: Text("impportant")),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  child: Column(
                    children: [
                      Padding(
                        padding: const .symmetric(horizontal: 16, vertical: 15),
                        child: Row(
                          spacing: 8,
                          children: [
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.archive),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.archiveX),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.trash2),
                            ),
                            SizedBox(
                              height: 32,
                              child: const VerticalDivider(),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.clock),
                            ),
                            const Spacer(),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.reply),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.replyAll),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.forward),
                            ),
                            SizedBox(
                              height: 32,
                              child: const VerticalDivider(),
                            ),
                            Builder(
                              builder: (context) {
                                return IconButton.ghost(
                                  onPressed: () {
                                    showDropdown(
                                      context: context,
                                      builder: (context) {
                                        return const DropdownMenu(
                                          children: [
                                            MenuButton(
                                              child: Text("Mark as unread"),
                                            ),
                                            MenuButton(
                                              child: Text("Star thread"),
                                            ),
                                            MenuButton(
                                              child: Text("Add label"),
                                            ),
                                            MenuButton(
                                              child: Text("Mute thread"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  density: .iconDense,
                                  icon: const Icon(
                                    LucideIcons.ellipsisVertical,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      const Divider(),

                      Padding(
                        padding: const .all(16),
                        child: Row(
                          crossAxisAlignment: .start,
                          spacing: 8,
                          children: [
                            Avatar(
                              size: 24,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("William Smith").bold(),
                                const Text("Meeting Tomorrow").small(),
                                const Text(
                                  "Reply-To: william@smith.com",
                                ).small(),
                              ],
                            ),
                            const Spacer(),
                            const Text("Jan 19, 2026").muted().small(),
                          ],
                        ),
                      ),

                      const Divider(),

                      Padding(
                        padding: const .all(16),
                        child: Column(
                          children: [
                            const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dapibus augue nisi, vel bibendum tellus consectetur non. Curabitur luctus lacus ac ipsum ornare feugiat. Morbi vel sem eu sem vulputate lobortis ac non nisl. Sed sed egestas neque. Vivamus efficitur, neque vel luctus mattis, quam urna pharetra ex, eget scelerisque odio quam vel lacus.",
                            ),
                          ],
                        ),
                      ),

                      Flexible(child: Column()),

                      const Divider(),

                      Padding(
                        padding: const .all(16),
                        child: Column(
                          children: [
                            TextField(
                              placeholder: const Text("Reply William Smith..."),
                              maxLines: 3,
                            ),
                            const SizedBox(height: 16),

                            Row(
                              children: [
                                Switch(
                                  value: value,
                                  onChanged: (value) {
                                    setState(() {
                                      this.value = value;
                                    });
                                  },
                                  trailing: const Text("Mute this thread"),
                                ),
                                const Spacer(),
                                PrimaryButton(
                                  onPressed: () {},
                                  child: const Text("Send"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
