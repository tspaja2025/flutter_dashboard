import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppBarWidget extends StatelessWidget {
  final VoidCallback onThemeToggle;
  final ThemeMode themeMode;
  final VoidCallback onToggleExpanded;

  const AppBarWidget({
    super.key,
    required this.onThemeToggle,
    required this.themeMode,
    required this.onToggleExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const .symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Theme.of(context).colorScheme.border),
        ),
      ),
      child: Row(
        spacing: 8,
        children: [
          IconButton.ghost(
            onPressed: onToggleExpanded,
            icon: const Icon(LucideIcons.panelLeft, size: 16),
          ),
          const SizedBox(height: 16, child: VerticalDivider()),
          IconButton.ghost(
            onPressed: () {},
            icon: const Icon(LucideIcons.search, size: 16),
          ),
          const Spacer(),
          const NotificationsMenu(),
          IconButton.ghost(
            onPressed: onThemeToggle,
            icon: Icon(
              themeMode == ThemeMode.dark ? LucideIcons.sun : LucideIcons.moon,
              size: 16,
            ),
          ),
          const ThemeMenu(),
          const SizedBox(height: 16, child: VerticalDivider()),
          const UserMenu(),
        ],
      ),
    );
  }
}

class NotificationsMenu extends StatelessWidget {
  const NotificationsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Builder(
      builder: (context) {
        return IconButton.ghost(
          onPressed: () {
            showDropdown(
              context: context,
              alignment: .bottomRight,
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.card,
                    border: .all(color: theme.colorScheme.border),
                    borderRadius: .circular(8),
                  ),
                  width: 280,
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisSize: .min,
                    children: [
                      Container(
                        padding: const .symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: theme.colorScheme.border),
                          ),
                        ),
                        height: 48,
                        child: Row(
                          children: [
                            const Text("Notifications").small(),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              density: .dense,
                              child: const Text("View All"),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: const .all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: theme.colorScheme.border),
                          ),
                        ),
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
                                const Text("Your order is placed").small(),
                                const Text(
                                  "Amet minim mallit non deser unt...",
                                ).muted().small(),
                                const Text("2 days ago").muted().small(),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: const .all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: theme.colorScheme.border),
                          ),
                        ),
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
                                const Text("Congratulations Darlene").small(),
                                const Text(
                                  "Won the monthly best selled badge",
                                ).muted().small(),
                                const Text("2 days ago").muted().small(),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: const .all(16),
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
                              spacing: 4,
                              children: [
                                const Text("Joaquina Weisenborn").small(),
                                const Text(
                                  "Requesting access permission",
                                ).muted().small(),
                                Row(
                                  spacing: 8,
                                  children: [
                                    OutlineButton(
                                      onPressed: () {},
                                      density: .dense,
                                      child: const Text("Accept"),
                                    ),
                                    OutlineButton(
                                      onPressed: () {},
                                      density: .dense,
                                      child: const Text("Decline"),
                                    ),
                                  ],
                                ),
                                const Text("2 days ago").muted().small(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: const Icon(LucideIcons.palette, size: 16),
        );
      },
    );
  }
}

class ThemeMenu extends StatefulWidget {
  const ThemeMenu({super.key});

  @override
  State<ThemeMenu> createState() => ThemeMenuState();
}

class ThemeMenuState extends State<ThemeMenu> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Builder(
      builder: (context) {
        return IconButton.ghost(
          onPressed: () {
            showDropdown(
              context: context,
              alignment: Alignment.bottomRight,
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.card,
                    border: Border.all(color: theme.colorScheme.border),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Theme preset").small(),

                      const SizedBox(height: 16),

                      Select<String>(
                        itemBuilder: (context, item) {
                          return Text(item);
                        },
                        popupConstraints: const BoxConstraints(
                          maxHeight: 300,
                          maxWidth: 200,
                        ),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        value: selectedValue,
                        placeholder: const Text("Default"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "Default",
                                child: Text("Default"),
                              ),
                            ],
                          ),
                        ).call,
                      ),

                      const SizedBox(height: 16),

                      const Text("Scale:"),

                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Icon(LucideIcons.ban, size: 16),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Text("XS"),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Text("LG"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      const Text("Radius:"),

                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Icon(LucideIcons.ban, size: 16),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Text("SM"),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Text("MD"),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Text("LG"),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            density: ButtonDensity.dense,
                            child: const Text("XL"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      const Text("Color mode:"),

                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlineButton(
                            onPressed: () {},
                            child: const Text("Light"),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            child: const Text("Dark"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                          onPressed: () {},
                          child: const Text("Reset to Default"),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: const Icon(LucideIcons.palette, size: 16),
        );
      },
    );
  }
}

class UserMenu extends StatelessWidget {
  const UserMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton.ghost(
          onPressed: () {
            showDropdown(
              context: context,
              builder: (context) {
                return const DropdownMenu(
                  children: [
                    MenuButton(
                      leading: Icon(LucideIcons.sparkles, size: 16),
                      child: Text("Upgrade to Pro"),
                    ),
                    MenuButton(
                      leading: Icon(LucideIcons.badgeCheck, size: 16),
                      child: Text("Account"),
                    ),
                    MenuButton(
                      leading: Icon(LucideIcons.creditCard, size: 16),
                      child: Text("Billing"),
                    ),
                    MenuButton(
                      leading: Icon(LucideIcons.bell, size: 16),
                      child: Text("Notifications"),
                    ),
                    MenuDivider(),
                    MenuButton(
                      leading: Icon(LucideIcons.logOut, size: 16),
                      child: Text("Log Out"),
                    ),
                  ],
                );
              },
            );
          },
          icon: Avatar(
            size: 24,
            initials: Avatar.getInitials("TS"),
            provider: const NetworkImage(
              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
            ),
          ),
        );
      },
    );
  }
}
