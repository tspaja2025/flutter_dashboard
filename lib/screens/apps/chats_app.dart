import 'package:shadcn_flutter/shadcn_flutter.dart';

class ChatsAppScreen extends StatelessWidget {
  const ChatsAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(children: [const Text("Chats App").bold().large()]),

          const SizedBox(height: 16),

          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.height - 144,
            child: Card(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      const Text("Chats").large().bold(),
                      const Spacer(),
                      Builder(
                        builder: (context) {
                          return IconButton.outline(
                            onPressed: () {
                              showDropdown(
                                context: context,
                                builder: (context) {
                                  return const DropdownMenu(
                                    children: [
                                      MenuButton(child: Text("New Chat")),
                                      MenuButton(child: Text("Create group")),
                                      MenuButton(child: Text("Add contact")),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: const Icon(LucideIcons.plus),
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  TextField(
                    placeholder: const Text("Chats search..."),
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

                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
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
                              const Text("John Doe"),
                              const Text("lorem ipsum...").muted().small(),
                            ],
                          ),
                          const Spacer(),
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
                                            child: Text("View profile"),
                                          ),
                                          MenuButton(
                                            child: Text("Add to archive"),
                                          ),
                                          MenuDivider(),
                                          MenuButton(child: Text("Block")),
                                          MenuButton(child: Text("Delete")),
                                        ],
                                      );
                                    },
                                  );
                                },
                                density: .iconDense,
                                icon: const Icon(LucideIcons.ellipsisVertical),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
