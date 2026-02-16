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
          IconButton.ghost(
            onPressed: () {},
            icon: const Icon(LucideIcons.bell, size: 16),
          ),
          IconButton.ghost(
            onPressed: onThemeToggle,
            icon: Icon(
              themeMode == ThemeMode.dark ? LucideIcons.sun : LucideIcons.moon,
              size: 16,
            ),
          ),
          IconButton.ghost(
            onPressed: () {},
            icon: const Icon(LucideIcons.palette, size: 16),
          ),
          const SizedBox(height: 16, child: VerticalDivider()),
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
                            leading: Icon(LucideIcons.sparkles),
                            child: Text("Upgrade to Pro"),
                          ),
                          MenuButton(
                            leading: Icon(LucideIcons.badgeCheck),
                            child: Text("Account"),
                          ),
                          MenuButton(
                            leading: Icon(LucideIcons.creditCard),
                            child: Text("Billing"),
                          ),
                          MenuButton(
                            leading: Icon(LucideIcons.bell),
                            child: Text("Notifications"),
                          ),
                          MenuDivider(),
                          MenuButton(
                            leading: Icon(LucideIcons.logOut),
                            child: Text("Log Out"),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Avatar(
                  size: 24,
                  initials: Avatar.getInitials("ts paja"),
                  provider: const NetworkImage(
                    "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                  ),
                ),
              );
            },
          ),
        ],
      ).gap(8),
    );
  }
}
