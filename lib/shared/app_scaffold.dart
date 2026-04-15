import 'package:flutter_dashboard/widget/app_bar_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AppScaffold extends StatefulWidget {
  final Widget child;
  final bool showBackButton;
  final bool showHeader;

  const AppScaffold({
    super.key,
    required this.child,
    this.showBackButton = false,
    this.showHeader = true,
  });

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  bool expanded = true;

  NavigationItem buildButton(String text, IconData icon, String routeName) {
    final isSelected = _isRouteActive(routeName);

    return NavigationItem(
      label: Text(text),
      selectedStyle: const ButtonStyle.primaryIcon(),
      selected: isSelected,
      onChanged: (selected) {
        if (selected) {
          context.pushNamed(routeName);
        }
      },
      child: Icon(icon, size: 16),
    );
  }

  NavigationGroup buildLabel(String label, List<Widget> children) {
    return NavigationGroup(
      labelAlignment: Alignment.centerLeft,
      label: Text(label).semiBold.muted.xSmall,
      children: children,
    );
  }

  bool _isRouteActive(String routeName) {
    final routerState = GoRouterState.of(context);
    final currentLocation = routerState.uri.path;

    switch (routeName) {
      case "classicDashboard":
        return currentLocation == "/";
      default:
        return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Row(
        children: [
          NavigationRail(
            backgroundColor: Theme.of(
              context,
            ).colorScheme.accent.withValues(alpha: 0.4),
            labelType: NavigationLabelType.expanded,
            labelPosition: NavigationLabelPosition.end,
            alignment: NavigationRailAlignment.start,
            expandedSize: 250,
            expanded: expanded,
            header: [
              Builder(
                builder: (context) {
                  return NavigationSlot(
                    leading: IconContainer(
                      backgroundColor: Colors.black,
                      icon: const Icon(
                        LucideIcons.galleryVerticalEnd,
                      ).iconMedium,
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
                      icon: const Icon(
                        LucideIcons.galleryVerticalEnd,
                      ).iconMedium,
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
            children: [
              buildButton("Dashbord", LucideIcons.house, "dashboard"),
              NavigationCollapsible(
                leading: const Icon(LucideIcons.receiptText),
                label: const Text("Invoices"),
                children: [
                  buildButton(
                    "Dashboard",
                    LucideIcons.receiptText,
                    "invoiceDashboard",
                  ),
                  buildButton(
                    "Invoice List",
                    LucideIcons.receipt,
                    "invoiceList",
                  ),
                  buildButton("Clients", LucideIcons.users, "invoiceClients"),
                ],
              ),
              buildButton("Kanban", LucideIcons.kanban, "kanban"),
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                bottom: 8,
                left: 0,
              ),
              child: Card(
                padding: const EdgeInsets.all(0),
                borderColor: Theme.of(context).colorScheme.border,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarWidget(
                      onToggleExpanded: () =>
                          setState(() => expanded = !expanded),
                    ),
                    Flexible(child: SingleChildScrollView(child: widget.child)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
