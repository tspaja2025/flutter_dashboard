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

  NavigationItem _buildButton(String text, IconData icon, String routeName) {
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

  NavigationGroup _buildLabel(String label, List<Widget> children) {
    return NavigationGroup(
      labelAlignment: Alignment.centerLeft,
      label: Text(label).semiBold.muted.xSmall,
      children: children,
    );
  }

  bool _isRouteActive(String routeName) {
    final currentRoute = GoRouterState.of(context).name;
    return currentRoute == routeName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Row(
        children: [
          NavigationRail(
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
              // Dashboards
              _buildLabel("Dashboards", [
                _buildButton(
                  "Classic Dashboard",
                  LucideIcons.chartPie,
                  "classicDashboard",
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.shoppingBag),
                  label: const Text("E-commerce"),
                  children: [
                    _buildButton(
                      "Dashboard",
                      LucideIcons.shoppingCart,
                      "ecommerceDashboard",
                    ),
                    _buildButton(
                      "Product List",
                      LucideIcons.list,
                      "ecommerceProductList",
                    ),
                    _buildButton(
                      "Product Detail",
                      LucideIcons.fileText,
                      "ecommerceProductDetail",
                    ),
                    _buildButton(
                      "Add Product",
                      LucideIcons.plus,
                      "ecommerceAddProduct",
                    ),
                    _buildButton(
                      "Order List",
                      LucideIcons.listOrdered,
                      "ecommerceOrderList",
                    ),
                    _buildButton(
                      "Order Detail",
                      LucideIcons.fileText,
                      "ecommerceOrderDetail",
                    ),
                  ],
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.creditCard),
                  label: const Text("Payment Management"),
                  children: [
                    _buildButton(
                      "Dashboard",
                      LucideIcons.banknote,
                      "paymentDashboard",
                    ),
                    _buildButton(
                      "Transactions",
                      LucideIcons.history,
                      "paymentTransactions",
                    ),
                  ],
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.building),
                  label: const Text("Hotel Management"),
                  children: [
                    _buildButton(
                      "Dashboard",
                      LucideIcons.building2,
                      "hotelDashboard",
                    ),
                    _buildButton(
                      "Booking",
                      LucideIcons.bookText,
                      "hotelBooking",
                    ),
                  ],
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.folderPlus),
                  label: const Text("Project Management"),
                  children: [
                    _buildButton(
                      "Dashboard",
                      LucideIcons.fileCheck,
                      "projectManagementDashboard",
                    ),
                    _buildButton(
                      "Project List",
                      LucideIcons.listCheck,
                      "projectProjectList",
                    ),
                  ],
                ),
                _buildButton(
                  "Sales",
                  LucideIcons.circleDollarSign,
                  "salesDashboard",
                ),
                _buildButton(
                  "CRM",
                  LucideIcons.chartBarIncreasing,
                  "crmDashboard",
                ),
                _buildButton(
                  "Website Analytics",
                  LucideIcons.gauge,
                  "websiteAnalyticsDashboard",
                ),
                _buildButton(
                  "File Manager",
                  LucideIcons.folder,
                  "fileManagerDashboard",
                ),
                _buildButton("Crypto", LucideIcons.wallet, "cryptoDashboard"),
                _buildButton(
                  "Academy/School",
                  LucideIcons.graduationCap,
                  "academyDashboard",
                ),
                _buildButton(
                  "Hospital Management",
                  LucideIcons.heartPulse,
                  "hospitalManagementDashboard",
                ),
                _buildButton(
                  "Finance Dashboard",
                  LucideIcons.walletCards,
                  "financeDashboard",
                ),
              ]),

              // Apps
              _buildLabel("Apps", [
                _buildButton("Kanban", LucideIcons.kanban, "kanbanBoardApp"),
                _buildButton("Notes", LucideIcons.stickyNote, "notesApp"),
                _buildButton("Chats", LucideIcons.messageSquare, "chatsApp"),
                _buildButton(
                  "Social Media",
                  LucideIcons.messageSquareHeart,
                  "socialMediaApp",
                ),
                _buildButton("Mail", LucideIcons.mail, "mailApp"),
                _buildButton("Todo List", LucideIcons.listTodo, "todoListApp"),
                _buildButton("Tasks", LucideIcons.clipboardCheck, "tasksApp"),
                _buildButton("Calendar", LucideIcons.calendar, "calendarApp"),
                _buildButton(
                  "File Manager",
                  LucideIcons.fileArchive,
                  "fileManagerApp",
                ),
                _buildButton("API Keys", LucideIcons.key, "apiKeysApp"),
                _buildButton("POS", LucideIcons.cookie, "posApp"),
                _buildButton("Courses", LucideIcons.bookA, "coursesApp"),
              ]),

              // AI Apps
              _buildLabel("AI Apps", [
                _buildButton(
                  "AI Chat",
                  LucideIcons.brainCircuit,
                  "aiChatAiApp",
                ),
                _buildButton(
                  "Image Generator",
                  LucideIcons.images,
                  "imageGenerateAiApp",
                ),
                _buildButton(
                  "Text to Speech",
                  LucideIcons.speech,
                  "textToSpeechAiApp",
                ),
              ]),

              // Pages
              _buildLabel("Pages", [
                _buildButton("Users List", LucideIcons.users, "usersListPage"),
                _buildButton("Profile", LucideIcons.user, "profilePage"),
                _buildButton(
                  "Onboarding Flow",
                  LucideIcons.redoDot,
                  "onboardingFlowPage",
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.brush),
                  label: const Text("Empty States"),
                  children: [
                    _buildButton(
                      "Empty State 01",
                      LucideIcons.construction,
                      "emptyStates01Page",
                    ),
                    _buildButton(
                      "Empty State 02",
                      LucideIcons.construction,
                      "emptyStates02Page",
                    ),
                    _buildButton(
                      "Empty State 03",
                      LucideIcons.construction,
                      "emptyStates03Page",
                    ),
                  ],
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.settings),
                  label: const Text("Settings"),
                  children: [
                    _buildButton(
                      "Profile",
                      LucideIcons.user,
                      "settingsProfilePage",
                    ),
                    _buildButton(
                      "Account",
                      LucideIcons.userCog,
                      "settingsAccountPage",
                    ),
                    _buildButton(
                      "Account",
                      LucideIcons.creditCard,
                      "settingsBillingPage",
                    ),
                    _buildButton(
                      "Appearance",
                      LucideIcons.palette,
                      "settingsAppearancePage",
                    ),
                    _buildButton(
                      "Notifications",
                      LucideIcons.bell,
                      "settingsNotificationsPage",
                    ),
                    _buildButton(
                      "Display",
                      LucideIcons.monitor,
                      "settingsDisplayPage",
                    ),
                  ],
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.badgeDollarSign),
                  label: const Text("Pricing"),
                  children: [
                    _buildButton(
                      "Column Pricing",
                      LucideIcons.columns2,
                      "pricingColumnPage",
                    ),
                    _buildButton(
                      "Table Pricing",
                      LucideIcons.table,
                      "pricingTablePage",
                    ),
                    _buildButton(
                      "Single Pricing",
                      LucideIcons.fileText,
                      "pricingSinglePage",
                    ),
                  ],
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.fingerprint),
                  label: const Text("Authentication"),
                  children: [
                    _buildButton(
                      "Login",
                      LucideIcons.logIn,
                      "authenticationLoginPage",
                    ),
                    _buildButton(
                      "Register",
                      LucideIcons.userPlus,
                      "authenticationRegisterPage",
                    ),
                    _buildButton(
                      "Forgot Password",
                      LucideIcons.key,
                      "authenticationForgotPasswordPage",
                    ),
                  ],
                ),
                NavigationCollapsible(
                  leading: const Icon(LucideIcons.folderPlus),
                  label: const Text("Error Pages"),
                  children: [
                    _buildButton(
                      "404",
                      LucideIcons.fileQuestion,
                      "error404Page",
                    ),
                    _buildButton("500", LucideIcons.server, "error500Page"),
                    _buildButton("403", LucideIcons.shield, "error403Page"),
                  ],
                ),
              ]),
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
