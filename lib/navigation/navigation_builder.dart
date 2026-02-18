import "package:flutter_dashboard/navigation/navigation_config.dart";
import "package:shadcn_flutter/shadcn_flutter.dart";

class NavigationBuilder extends StatelessWidget {
  final bool expanded;
  final AppScreen selectedPage;
  final Function(AppScreen) onPageSelected;
  final List<NavigationSection> sections;

  const NavigationBuilder({
    super.key,
    required this.expanded,
    required this.selectedPage,
    required this.onPageSelected,
    required this.sections,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      labelType: expanded
          ? NavigationLabelType.expanded
          : NavigationLabelType.tooltip,
      labelPosition: NavigationLabelPosition.end,
      alignment: NavigationRailAlignment.start,
      expanded: expanded,
      expandedSize: 240,
      header: [
        Builder(
          builder: (context) {
            return NavigationSlot(
              leading: IconContainer(
                backgroundColor: Colors.black,
                icon: const Icon(LucideIcons.galleryVerticalEnd).iconMedium,
              ),
              title: const Text("Flutter Dashboard").medium.small,
              subtitle: const Text("Enterprise").xSmall.normal,
              onPressed: () {},
            );
          },
        ),
      ],
      footer: [
        Builder(
          builder: (context) {
            return NavigationSlot(
              leading: IconContainer(
                backgroundColor: Colors.black,
                icon: const Icon(LucideIcons.galleryVerticalEnd).iconMedium,
              ),
              title: const Text("tspaja").medium.small,
              subtitle: const Text("example@example.com").xSmall.normal,
              trailing: const Icon(LucideIcons.chevronsUpDown).iconSmall,
              onPressed: () {
                showDropdown(
                  context: context,
                  anchorAlignment: AlignmentDirectional.centerEnd,
                  alignment: AlignmentDirectional.centerStart,
                  offset: const Offset(16, 0),
                  builder: (context) {
                    return DropdownMenu(
                      children: [
                        MenuButton(
                          leading: const Icon(LucideIcons.user),
                          child: const Text("Account"),
                          onPressed: (ctx) {},
                        ),
                        MenuButton(
                          leading: const Icon(LucideIcons.settings),
                          child: const Text("Billing"),
                          onPressed: (ctx) {},
                        ),
                        MenuButton(
                          leading: const Icon(LucideIcons.bell),
                          child: const Text("Notifications"),
                          onPressed: (ctx) {},
                        ),
                        const MenuDivider(),
                        MenuButton(
                          leading: const Icon(LucideIcons.logOut),
                          child: const Text("Log out"),
                          onPressed: (ctx) {},
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ],
      children: sections.map((section) => _buildSection(section)).toList(),
    );
  }

  Widget _buildSection(NavigationSection section) {
    return NavigationGroup(
      labelAlignment: Alignment.centerLeft,
      label: Text(section.label).muted().small(),
      children: section.items.map((item) => _buildItem(item)).toList(),
    );
  }

  Widget _buildItem(NavigationItemConfig item) {
    if (item.hasChildren) {
      return NavigationCollapsible(
        label: Text(item.label),
        leading: Icon(item.icon),
        children: item.children!.map((child) => _buildItem(child)).toList(),
      );
    }

    return NavigationItem(
      label: Text(item.label),
      selectedStyle: const ButtonStyle.primaryIcon(),
      selected: selectedPage == item.screen,
      onChanged: (selected) {
        if (selected) {
          onPageSelected(item.screen);
        }
      },
      child: Icon(item.icon),
    );
  }
}
