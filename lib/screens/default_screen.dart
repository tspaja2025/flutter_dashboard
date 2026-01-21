import 'package:flutter_dashboard/screens/ai_apps/ai_chat_ai_app.dart';
import 'package:flutter_dashboard/screens/ai_apps/image_generate_ai_app.dart';
import 'package:flutter_dashboard/screens/ai_apps/text_to_speech_ai_app.dart';
import 'package:flutter_dashboard/screens/apps/api_keys_app.dart';
import 'package:flutter_dashboard/screens/apps/calendar_app.dart';
import 'package:flutter_dashboard/screens/apps/chats_app.dart';
import 'package:flutter_dashboard/screens/apps/courses_app.dart';
import 'package:flutter_dashboard/screens/apps/file_manager_app.dart';
import 'package:flutter_dashboard/screens/apps/kanban_board_app.dart';
import 'package:flutter_dashboard/screens/apps/mail_app.dart';
import 'package:flutter_dashboard/screens/apps/notes_app.dart';
import 'package:flutter_dashboard/screens/apps/pos_app.dart';
import 'package:flutter_dashboard/screens/apps/social_media_app.dart';
import 'package:flutter_dashboard/screens/apps/tasks_app.dart';
import 'package:flutter_dashboard/screens/apps/todo_list_app.dart';
import 'package:flutter_dashboard/screens/dashboards/academy_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/classic_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/crm_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/crypto_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_add_product.dart';
import 'package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_order_detail.dart';
import 'package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_order_list.dart';
import 'package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_product_detail.dart';
import 'package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_product_list.dart';
import 'package:flutter_dashboard/screens/dashboards/file_manager_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/finance_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/hospital_management_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/hotel/hotel_booking.dart';
import 'package:flutter_dashboard/screens/dashboards/hotel/hotel_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/payment/payment_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/payment/payment_transactions.dart';
import 'package:flutter_dashboard/screens/dashboards/project/project_management_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/project/project_project_list.dart';
import 'package:flutter_dashboard/screens/dashboards/sales_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/website_analytics_dashboard.dart';
import 'package:flutter_dashboard/screens/pages/authentication/authentication_forgot_password_page.dart';
import 'package:flutter_dashboard/screens/pages/authentication/authentication_login_page.dart';
import 'package:flutter_dashboard/screens/pages/authentication/authentication_register_page.dart';
import 'package:flutter_dashboard/screens/pages/empty_states_page.dart';
import 'package:flutter_dashboard/screens/pages/error_pages/error_403_page.dart';
import 'package:flutter_dashboard/screens/pages/error_pages/error_404_page.dart';
import 'package:flutter_dashboard/screens/pages/error_pages/error_500_page.dart';
import 'package:flutter_dashboard/screens/pages/onboarding_flow_page.dart';
import 'package:flutter_dashboard/screens/pages/pricing/pricing_column_page.dart';
import 'package:flutter_dashboard/screens/pages/pricing/pricing_single_page.dart';
import 'package:flutter_dashboard/screens/pages/pricing/pricing_table_page.dart';
import 'package:flutter_dashboard/screens/pages/profile_page.dart';
import 'package:flutter_dashboard/screens/pages/settings/settings_account_page.dart';
import 'package:flutter_dashboard/screens/pages/settings/settings_appearance_page.dart';
import 'package:flutter_dashboard/screens/pages/settings/settings_billing_page.dart';
import 'package:flutter_dashboard/screens/pages/settings/settings_display_page.dart';
import 'package:flutter_dashboard/screens/pages/settings/settings_notifications_page.dart';
import 'package:flutter_dashboard/screens/pages/settings/settings_profile_page.dart';
import 'package:flutter_dashboard/screens/pages/users_list_page.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => DefaultScreenState();
}

class DefaultScreenState extends State<DefaultScreen> {
  bool expanded = false;
  int selectedIndex = 0;

  final Map<String, bool> expandedItems = {};

  final List<NavItem> menu = [
    // ================= DASHBOARDS =================
    NavItem(
      label: "Dashboards",
      children: [
        NavItem(
          label: "Classic Dashboard",
          icon: LucideIcons.chartPie,
          screenIndex: 0,
        ),

        NavItem(
          label: "E-commerce",
          icon: LucideIcons.shoppingBag,
          children: [
            NavItem(label: "Dashboard", screenIndex: 1),
            NavItem(label: "Product List", screenIndex: 2),
            NavItem(label: "Product Detail", screenIndex: 3),
            NavItem(label: "Add Product", screenIndex: 4),
            NavItem(label: "Order List", screenIndex: 5),
            NavItem(label: "Order Detail", screenIndex: 6),
          ],
        ),

        NavItem(
          label: "Payment",
          icon: LucideIcons.creditCard,
          children: [
            NavItem(label: "Dashboard", screenIndex: 7),
            NavItem(label: "Transactions", screenIndex: 8),
          ],
        ),

        NavItem(
          label: "Hotel",
          icon: LucideIcons.building,
          children: [
            NavItem(label: "Dashboard", screenIndex: 9),
            NavItem(label: "Booking", screenIndex: 10),
          ],
        ),

        NavItem(
          label: "Project Management",
          icon: LucideIcons.folderPlus,
          children: [
            NavItem(label: "Dashboard", screenIndex: 11),
            NavItem(label: "Project List", screenIndex: 12),
          ],
        ),

        NavItem(
          label: "Sales Dashboard",
          icon: LucideIcons.circleDollarSign,
          screenIndex: 13,
        ),

        NavItem(
          label: "CRM Dashboard",
          icon: LucideIcons.chartBarDecreasing,
          screenIndex: 14,
        ),

        NavItem(
          label: "Website Analytics",
          icon: LucideIcons.gauge,
          screenIndex: 15,
        ),

        NavItem(
          label: "File Manager",
          icon: LucideIcons.folder,
          screenIndex: 16,
        ),

        NavItem(
          label: "Crypto Dashboard",
          icon: LucideIcons.wallet,
          screenIndex: 17,
        ),

        NavItem(
          label: "Academy / School",
          icon: LucideIcons.graduationCap,
          screenIndex: 18,
        ),

        NavItem(
          label: "Hospital Management",
          icon: LucideIcons.heartPulse,
          screenIndex: 19,
        ),

        NavItem(
          label: "Finance Dashboard",
          icon: LucideIcons.walletCards,
          screenIndex: 20,
        ),
      ],
    ),

    // ================= APPS =================
    NavItem(
      label: "Apps",
      children: [
        NavItem(
          label: "Kanban Board",
          icon: LucideIcons.kanban,
          screenIndex: 21,
        ),
        NavItem(label: "Notes", icon: LucideIcons.stickyNote, screenIndex: 22),
        NavItem(
          label: "Chats",
          icon: LucideIcons.messageSquare,
          screenIndex: 23,
        ),
        NavItem(
          label: "Social Media",
          icon: LucideIcons.messageCircleHeart,
          screenIndex: 24,
        ),
        NavItem(label: "Mail", icon: LucideIcons.mail, screenIndex: 25),
        NavItem(
          label: "Todo List",
          icon: LucideIcons.squareCheck,
          screenIndex: 26,
        ),
        NavItem(
          label: "Tasks",
          icon: LucideIcons.clipboardCheck,
          screenIndex: 27,
        ),
        NavItem(label: "Calendar", icon: LucideIcons.calendar, screenIndex: 28),
        NavItem(
          label: "File Manager",
          icon: LucideIcons.folderArchive,
          screenIndex: 29,
        ),
        NavItem(label: "API Keys", icon: LucideIcons.key, screenIndex: 30),
        NavItem(label: "POS App", icon: LucideIcons.cookie, screenIndex: 31),
        NavItem(label: "Courses", icon: LucideIcons.bookA, screenIndex: 32),
      ],
    ),

    // ================= AI APPS =================
    NavItem(
      label: "AI Apps",
      children: [
        NavItem(
          label: "AI Chat",
          icon: LucideIcons.brainCircuit,
          screenIndex: 33,
        ),
        NavItem(
          label: "Image Generator",
          icon: LucideIcons.images,
          screenIndex: 34,
        ),
        NavItem(
          label: "Text To Speech",
          icon: LucideIcons.speech,
          screenIndex: 35,
        ),
      ],
    ),

    // ================= PAGES =================
    NavItem(
      label: "Pages",
      children: [
        NavItem(label: "Users List", screenIndex: 36),
        NavItem(label: "Profile", screenIndex: 37),
        NavItem(label: "Onboarding Flow", screenIndex: 38),
        NavItem(label: "Empty States", screenIndex: 39),

        NavItem(
          label: "Authentication",
          children: [
            NavItem(label: "Login", screenIndex: 40),
            NavItem(label: "Register", screenIndex: 41),
            NavItem(label: "Forgot Password", screenIndex: 42),
          ],
        ),

        NavItem(
          label: "Error Pages",
          children: [
            NavItem(label: "404 Page", screenIndex: 43),
            NavItem(label: "500 Page", screenIndex: 44),
            NavItem(label: "403 Page", screenIndex: 45),
          ],
        ),
      ],
    ),
  ];

  final List<Widget> screens = [
    // Dashboards
    const ClassicDashboardScreen(),
    // e-commerce children start
    const EcommerceDashboardScreen(),
    const EcommerceProductListScreen(),
    const EcommerceProductDetailScreen(),
    const EcommerceAddProductScreen(),
    const EcommerceOrderListScreen(),
    const EcommerceOrderDetailScreen(),
    // e-commerce children end
    // Payment children start
    const PaymentDashboardScreen(),
    const PaymentTransactionsScreen(),
    // Payment children end
    // Hotel children start
    const HotelDashboardScreen(),
    const HotelBookingScreen(),
    // Hotel children end
    // Project management children start
    const ProjectManagementDashboardScreen(),
    const ProjectProjectListScreen(),
    // Project management children end
    const SalesDashboardScreen(),
    const CrmDashboardScreen(),
    const WebsiteAnalyticsDashboardScreen(),
    const FileManagerDashboardScreen(),
    const CryptoDashboardScreen(),
    const AcademyDashboardScreen(),
    const HospitalManagementDashboardScreen(),
    const FinanceDashboardScreen(),
    // Apps
    const KanbanBoardAppScreen(),
    const NotesAppScreen(),
    const ChatsAppScreen(),
    const SocialMediaAppScreen(),
    const MailAppScreen(),
    const TodoListAppScreen(),
    const TasksAppScreen(),
    const CalendarAppScreen(),
    const FileManagerAppScreen(),
    const ApiKeysAppScreen(),
    const PosAppScreen(),
    const CoursesAppScreen(),
    // AI Apps
    const AiChatAiAppScreen(),
    const ImageGenerateAiAppScreen(),
    const TextToSpeechAiAppScreen(),
    // Pages
    const UsersListPageScreen(),
    const ProfilePageScreen(),
    const OnboardingFlowPageScreen(),
    const EmptyStatesPageScreen(),
    // Settings children start
    const SettingsProfilePageScreen(),
    const SettingsAccountPageScreen(),
    const SettingsBillingPageScreen(),
    const SettingsAppearancePageScreen(),
    const SettingsNotificationsPageScreen(),
    const SettingsDisplayPageScreen(),
    // Settings children end
    // Pricing children start
    const PricingColumnPageScreen(),
    const PricingTablePageScreen(),
    const PricingSinglePageScreen(),
    // Pricing children end
    // Authentication children start
    const AuthenticationLoginPageScreen(),
    const AuthenticationRegisterPageScreen(),
    const AuthenticationForgotPasswordPageScreen(),
    // Authentication children end
    // Error children start
    const Error404PageScreen(),
    const Error500PageScreen(),
    const Error403PageScreen(),
    // Error children end
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: SafeArea(
        child: Row(
          crossAxisAlignment: .stretch,
          children: [
            _buildRail(),

            Flexible(
              child: Padding(
                padding: const .all(8),
                child: Card(
                  padding: const .all(0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Padding(
                        padding: const .all(8),
                        child: Row(
                          spacing: 8,
                          children: [
                            IconButton.ghost(
                              onPressed: () {
                                setState(() {
                                  expanded = !expanded;
                                });
                              },
                              icon: expanded
                                  ? const Icon(LucideIcons.panelLeftClose)
                                  : const Icon(LucideIcons.panelLeftOpen),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.search),
                            ),
                            const Spacer(),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.bell),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.moon),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.palette),
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
                                              child: Text("Upgrade to Pro"),
                                            ),
                                            MenuButton(child: Text("Account")),
                                            MenuButton(child: Text("Billing")),
                                            MenuButton(
                                              child: Text("Notifications"),
                                            ),
                                            MenuDivider(),
                                            MenuButton(child: Text("Log out")),
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
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: IndexedStack(
                            index: selectedIndex,
                            children: screens,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRail() {
    return Container(
      width: expanded ? 260 : 72,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Theme.of(context).colorScheme.border),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            const SizedBox(height: 8),
            for (final section in menu) ...[
              if (expanded)
                Padding(
                  padding: const .symmetric(horizontal: 12, vertical: 8),
                  child: Text(section.label).small().semiBold().muted(),
                ),
              for (final item in section.children) _buildNavItem(item),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(NavItem item, {double indent = 0}) {
    final isExpanded = expandedItems[item.label] ?? false;
    final isSelected = item.screenIndex == selectedIndex;

    return Column(
      crossAxisAlignment: .start,
      children: [
        GhostButton(
          onPressed: () {
            if (item.isParent) {
              setState(() {
                expandedItems[item.label] = !isExpanded;
              });
            } else {
              setState(() {
                selectedIndex = item.screenIndex!;
              });
            }
          },
          child: Row(
            mainAxisAlignment: expanded ? .start : .center,
            children: [
              if (item.icon != null) Icon(item.icon, size: 16),
              if (expanded) ...[
                const SizedBox(width: 8),
                Expanded(child: Text(item.label)),
                if (item.isParent)
                  Icon(
                    isExpanded
                        ? LucideIcons.chevronDown
                        : LucideIcons.chevronRight,
                    size: 14,
                  ),
              ],
            ],
          ),
        ),

        if (item.isParent)
          AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: isExpanded
                ? Column(
                    children: item.children
                        .map(
                          (child) => _buildNavItem(child, indent: indent + 16),
                        )
                        .toList(),
                  )
                : const SizedBox.shrink(),
          ),
      ],
    );
  }
}

class NavItem {
  final String label;
  final IconData? icon;
  final int? screenIndex;
  final List<NavItem> children;

  const NavItem({
    required this.label,
    this.icon,
    this.screenIndex,
    this.children = const [],
  });

  bool get isParent => children.isNotEmpty;
}
