import 'package:shadcn_flutter/shadcn_flutter.dart';

class SocialMediaAppScreen extends StatelessWidget {
  const SocialMediaAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [const Text("Social Media App").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OutlinedContainer(
                    borderColor: Theme.of(context).colorScheme.border,
                    backgroundColor: Colors.gray.shade100,
                    height: MediaQuery.of(context).size.height - 315,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Avatar(
                              size: 32,
                              initials: Avatar.getInitials("TS"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("John Doe").small,
                                const Text("@johnDoe").muted.xSmall,
                              ],
                            ),
                            const Spacer(),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.settings),
                            ),
                          ],
                        ).gap(8),

                        const SizedBox(height: 16),

                        TextField(
                          placeholder: const Text("Search..."),
                          features: [
                            InputFeature.leading(
                              StatedWidget.builder(
                                builder: (context, states) {
                                  // Use a muted icon normally, switch to the full icon on hover
                                  if (states.hovered) {
                                    return const Icon(Icons.search);
                                  } else {
                                    return const Icon(
                                      Icons.search,
                                    ).iconMutedForeground();
                                  }
                                },
                              ),
                              visibility: InputFeatureVisibility.textEmpty,
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        PrimaryButton(
                          onPressed: () {},
                          leading: const Icon(LucideIcons.house),
                          trailing: const Chip(child: Text("10")),
                          child: const Text("Home"),
                        ),
                        GhostButton(
                          onPressed: () {},
                          leading: const Icon(LucideIcons.listTodo),
                          child: const Text("Tasks"),
                        ),
                        GhostButton(
                          onPressed: () {},
                          leading: const Icon(LucideIcons.listTodo),
                          trailing: const Chip(child: Text("2")),
                          child: const Text("Users"),
                        ),
                        GhostButton(
                          onPressed: () {},
                          leading: const Icon(LucideIcons.globe),
                          child: const Text("APIs"),
                        ),
                        GhostButton(
                          onPressed: () {},
                          leading: const Icon(LucideIcons.creditCard),
                          child: const Text("Subscription"),
                        ),
                        GhostButton(
                          onPressed: () {},
                          leading: const Icon(LucideIcons.settings),
                          child: const Text("Settings"),
                        ),
                        GhostButton(
                          onPressed: () {},
                          leading: const Icon(LucideIcons.circleHelp),
                          child: const Text("Help & Support"),
                        ),

                        const SizedBox(height: 16),

                        PrimaryButton(
                          onPressed: () {},
                          alignment: Alignment.center,
                          child: const Text("Create Post"),
                        ),
                      ],
                    ),
                  ),
                  OutlinedContainer(
                    borderColor: Theme.of(context).colorScheme.border,
                    backgroundColor: Colors.gray.shade100,
                    height: 150,
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(LucideIcons.triangleAlert),

                        const SizedBox(height: 16),

                        const Text(
                          "Enjoy unlimited access to our template by paying just a small fee",
                        ).xSmall,

                        const SizedBox(height: 16),

                        Row(
                          children: [
                            SecondaryButton(
                              onPressed: () {},
                              child: const Text("Dismiss"),
                            ),
                            PrimaryButton(
                              onPressed: () {},
                              child: const Text("Go Pro"),
                            ),
                          ],
                        ).gap(8),
                      ],
                    ),
                  ),
                ],
              ).gap(16),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
            SizedBox(
              width: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OutlinedContainer(
                    borderColor: Theme.of(context).colorScheme.border,
                    backgroundColor: Colors.gray.shade100,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            const Text("Suggested For You").bold.small,
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("See All"),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        Row(
                          children: [
                            Avatar(
                              size: 32,
                              initials: Avatar.getInitials("TS"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Azunyan").small,
                                const Text("@Azu").muted.xSmall,
                              ],
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Follow"),
                            ),
                          ],
                        ).gap(8),

                        const SizedBox(height: 16),

                        Row(
                          children: [
                            Avatar(
                              size: 32,
                              initials: Avatar.getInitials("TS"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Oarack").small,
                                const Text("@rack").muted.xSmall,
                              ],
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Follow"),
                            ),
                          ],
                        ).gap(8),

                        const SizedBox(height: 16),

                        Row(
                          children: [
                            Avatar(
                              size: 32,
                              initials: Avatar.getInitials("TS"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("David Gilmore").small,
                                const Text("@david").muted.xSmall,
                              ],
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Follow"),
                            ),
                          ],
                        ).gap(8),

                        const SizedBox(height: 16),

                        Row(
                          children: [
                            Avatar(
                              size: 32,
                              initials: Avatar.getInitials("TS"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Gerard").small,
                                const Text("@gerard").muted.xSmall,
                              ],
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Follow"),
                            ),
                          ],
                        ).gap(8),

                        const SizedBox(height: 16),

                        Row(
                          children: [
                            Avatar(
                              size: 32,
                              initials: Avatar.getInitials("TS"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Mary").small,
                                const Text("@mary").muted.xSmall,
                              ],
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Follow"),
                            ),
                          ],
                        ).gap(8),

                        const SizedBox(height: 16),

                        Row(
                          children: [
                            Avatar(
                              size: 32,
                              initials: Avatar.getInitials("TS"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Edgar Wright").small,
                                const Text("@edgarwright").muted.xSmall,
                              ],
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Follow"),
                            ),
                          ],
                        ).gap(8),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
