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
import 'package:flutter_dashboard/screens/pages/empty_states/empty_state_01_page.dart';
import 'package:flutter_dashboard/screens/pages/empty_states/empty_state_02_page.dart';
import 'package:flutter_dashboard/screens/pages/empty_states/empty_state_03_page.dart';
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

// TODO:
// Apps:
// Social Media
// File Manager
// POS App
// Courses
// AI Apps:
// Image Generator
// Text to Speech
// Pages:
// Onboarding Flow

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => DefaultScreenState();
}

class DefaultScreenState extends State<DefaultScreen> {
  bool expanded = false;
  AppScreen selectedPage = AppScreen.classicDashboard;
  int? openSubmenuIndex;

  // Navigation data
  final List<NavigationCategory> navigationCategories = [
    NavigationCategory(
      title: 'Dashboards',
      items: [
        NavigationRailItem(
          label: 'Classic Dashboard',
          icon: LucideIcons.chartPie,
          screen: AppScreen.classicDashboard,
        ),
        NavigationRailItem(
          label: 'E-commerce',
          icon: LucideIcons.shoppingBag,
          screen: AppScreen.ecommerceDashboard,
          children: [
            NavigationRailItem(
              label: 'Dashboard',
              icon: LucideIcons.shoppingBag,
              screen: AppScreen.ecommerceDashboard,
            ),
            NavigationRailItem(
              label: 'Product List',
              icon: LucideIcons.list,
              screen: AppScreen.ecommerceProductList,
            ),
            NavigationRailItem(
              label: 'Product Detail',
              icon: LucideIcons.fileText,
              screen: AppScreen.ecommerceProductDetail,
            ),
            NavigationRailItem(
              label: 'Add Product',
              icon: LucideIcons.plus,
              screen: AppScreen.ecommerceAddProduct,
            ),
            NavigationRailItem(
              label: 'Order List',
              icon: LucideIcons.listOrdered,
              screen: AppScreen.ecommerceOrderList,
            ),
            NavigationRailItem(
              label: 'Order Detail',
              icon: LucideIcons.fileText,
              screen: AppScreen.ecommerceOrderDetail,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Payment Dashboard',
          icon: LucideIcons.creditCard,
          screen: AppScreen.paymentDashboard,
          children: [
            NavigationRailItem(
              label: 'Dashboard',
              icon: LucideIcons.creditCard,
              screen: AppScreen.paymentDashboard,
            ),
            NavigationRailItem(
              label: 'Transactions',
              icon: LucideIcons.history,
              screen: AppScreen.paymentTransactions,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Hotel Dashboard',
          icon: LucideIcons.building,
          screen: AppScreen.hotelDashboard,
          children: [
            NavigationRailItem(
              label: 'Dashboard',
              icon: LucideIcons.building,
              screen: AppScreen.hotelDashboard,
            ),
            NavigationRailItem(
              label: 'Booking',
              icon: LucideIcons.calendarCheck,
              screen: AppScreen.hotelBooking,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Project Management',
          icon: LucideIcons.folderPlus,
          screen: AppScreen.projectManagementDashboard,
          children: [
            NavigationRailItem(
              label: 'Dashboard',
              icon: LucideIcons.folderPlus,
              screen: AppScreen.projectManagementDashboard,
            ),
            NavigationRailItem(
              label: 'Project List',
              icon: LucideIcons.listChecks,
              screen: AppScreen.projectProjectList,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Sales',
          icon: LucideIcons.circleDollarSign,
          screen: AppScreen.salesDashboard,
        ),
        NavigationRailItem(
          label: 'CRM',
          icon: LucideIcons.chartBarDecreasing,
          screen: AppScreen.crmDashboard,
        ),
        NavigationRailItem(
          label: 'Website Analytics',
          icon: LucideIcons.gauge,
          screen: AppScreen.websiteAnalyticsDashboard,
        ),
        NavigationRailItem(
          label: 'File Manager',
          icon: LucideIcons.folder,
          screen: AppScreen.fileManagerDashboard,
        ),
        NavigationRailItem(
          label: 'Crypto',
          icon: LucideIcons.wallet,
          screen: AppScreen.cryptoDashboard,
        ),
        NavigationRailItem(
          label: 'Academy/School',
          icon: LucideIcons.graduationCap,
          screen: AppScreen.academyDashboard,
        ),
        NavigationRailItem(
          label: 'Hospital management',
          icon: LucideIcons.heartPulse,
          screen: AppScreen.hospitalManagementDashboard,
        ),
        NavigationRailItem(
          label: 'Finance Dashboard',
          icon: LucideIcons.walletCards,
          screen: AppScreen.financeDashboard,
        ),
      ],
    ),
    NavigationCategory(
      title: 'Apps',
      items: [
        NavigationRailItem(
          label: 'Kanban',
          icon: LucideIcons.kanban,
          screen: AppScreen.kanbanBoardApp,
        ),
        NavigationRailItem(
          label: 'Notes',
          icon: LucideIcons.stickyNote,
          screen: AppScreen.notesApp,
        ),
        NavigationRailItem(
          label: 'Chats',
          icon: LucideIcons.messageSquare,
          screen: AppScreen.chatsApp,
        ),
        NavigationRailItem(
          label: 'Social Media',
          icon: LucideIcons.messageSquareHeart,
          screen: AppScreen.socialMediaApp,
        ),
        NavigationRailItem(
          label: 'Mail',
          icon: LucideIcons.mail,
          screen: AppScreen.mailApp,
        ),
        NavigationRailItem(
          label: 'Todo List App',
          icon: LucideIcons.listTodo,
          screen: AppScreen.todoListApp,
        ),
        NavigationRailItem(
          label: 'Tasks',
          icon: LucideIcons.clipboardCheck,
          screen: AppScreen.tasksApp,
        ),
        NavigationRailItem(
          label: 'Calendar',
          icon: LucideIcons.calendar,
          screen: AppScreen.calendarApp,
        ),
        NavigationRailItem(
          label: 'File Manager',
          icon: LucideIcons.fileArchive,
          screen: AppScreen.fileManagerApp,
        ),
        NavigationRailItem(
          label: 'Api Keys',
          icon: LucideIcons.key,
          screen: AppScreen.apiKeysApp,
        ),
        NavigationRailItem(
          label: 'POS App',
          icon: LucideIcons.cookie,
          screen: AppScreen.posApp,
        ),
        NavigationRailItem(
          label: 'Courses',
          icon: LucideIcons.bookA,
          screen: AppScreen.coursesApp,
        ),
      ],
    ),
    NavigationCategory(
      title: 'AI Apps',
      items: [
        NavigationRailItem(
          label: 'AI Chat',
          icon: LucideIcons.brainCircuit,
          screen: AppScreen.aiChatAiApp,
        ),
        NavigationRailItem(
          label: 'Image Generator',
          icon: LucideIcons.images,
          screen: AppScreen.imageGenerateAiApp,
        ),
        NavigationRailItem(
          label: 'Text to Speech',
          icon: LucideIcons.speech,
          screen: AppScreen.textToSpeechAiApp,
        ),
      ],
    ),
    NavigationCategory(
      title: 'Pages',
      items: [
        NavigationRailItem(
          label: 'Users List',
          icon: LucideIcons.users,
          screen: AppScreen.usersListPage,
        ),
        NavigationRailItem(
          label: 'Profile',
          icon: LucideIcons.user,
          screen: AppScreen.profilePage,
        ),
        NavigationRailItem(
          label: 'Onboarding Flow',
          icon: LucideIcons.redoDot,
          screen: AppScreen.onboardingFlowPage,
        ),
        NavigationRailItem(
          label: 'Empty States',
          icon: LucideIcons.brush,
          screen: AppScreen.emptyStates01Page,
          children: [
            NavigationRailItem(
              label: 'Empty States 01',
              icon: LucideIcons.user,
              screen: AppScreen.emptyStates01Page,
            ),
            NavigationRailItem(
              label: 'Empty States 02',
              icon: LucideIcons.user,
              screen: AppScreen.emptyStates02Page,
            ),
            NavigationRailItem(
              label: 'Empty States 03',
              icon: LucideIcons.user,
              screen: AppScreen.emptyStates03Page,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Settings',
          icon: LucideIcons.cog,
          screen: AppScreen.settingsProfilePage,
          children: [
            NavigationRailItem(
              label: 'Profile',
              icon: LucideIcons.user,
              screen: AppScreen.settingsProfilePage,
            ),
            NavigationRailItem(
              label: 'Account',
              icon: LucideIcons.userCog,
              screen: AppScreen.settingsAccountPage,
            ),
            NavigationRailItem(
              label: 'Billing',
              icon: LucideIcons.creditCard,
              screen: AppScreen.settingsBillingPage,
            ),
            NavigationRailItem(
              label: 'Appearance',
              icon: LucideIcons.palette,
              screen: AppScreen.settingsAppearancePage,
            ),
            NavigationRailItem(
              label: 'Notifications',
              icon: LucideIcons.bell,
              screen: AppScreen.settingsNotificationsPage,
            ),
            NavigationRailItem(
              label: 'Display',
              icon: LucideIcons.monitor,
              screen: AppScreen.settingsDisplayPage,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Pricing',
          icon: LucideIcons.circleDollarSign,
          screen: AppScreen.pricingColumnPage,
          children: [
            NavigationRailItem(
              label: 'Column Pricing',
              icon: LucideIcons.columns2,
              screen: AppScreen.pricingColumnPage,
            ),
            NavigationRailItem(
              label: 'Table Pricing',
              icon: LucideIcons.table,
              screen: AppScreen.pricingTablePage,
            ),
            NavigationRailItem(
              label: 'Single Pricing',
              icon: LucideIcons.fileText,
              screen: AppScreen.pricingSinglePage,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Authentication',
          icon: LucideIcons.fingerprint,
          screen: AppScreen.authenticationLoginPage,
          children: [
            NavigationRailItem(
              label: 'Login',
              icon: LucideIcons.logIn,
              screen: AppScreen.authenticationLoginPage,
            ),
            NavigationRailItem(
              label: 'Register',
              icon: LucideIcons.userPlus,
              screen: AppScreen.authenticationRegisterPage,
            ),
            NavigationRailItem(
              label: 'Forgot Password',
              icon: LucideIcons.key,
              screen: AppScreen.authenticationForgotPasswordPage,
            ),
          ],
        ),
        NavigationRailItem(
          label: 'Error Pages',
          icon: LucideIcons.shieldAlert,
          screen: AppScreen.error404Page,
          children: [
            NavigationRailItem(
              label: '404',
              icon: LucideIcons.fileQuestion,
              screen: AppScreen.error404Page,
            ),
            NavigationRailItem(
              label: '500',
              icon: LucideIcons.server,
              screen: AppScreen.error500Page,
            ),
            NavigationRailItem(
              label: '403',
              icon: LucideIcons.shieldBan,
              screen: AppScreen.error403Page,
            ),
          ],
        ),
      ],
    ),
  ];

  // Screen mapping
  final Map<AppScreen, Widget> screens = {
    // Dashboards
    AppScreen.classicDashboard: const ClassicDashboardScreen(),
    AppScreen.ecommerceDashboard: const EcommerceDashboardScreen(),
    AppScreen.ecommerceProductList: const EcommerceProductListScreen(),
    AppScreen.ecommerceProductDetail: const EcommerceProductDetailScreen(),
    AppScreen.ecommerceAddProduct: const EcommerceAddProductScreen(),
    AppScreen.ecommerceOrderList: const EcommerceOrderListScreen(),
    AppScreen.ecommerceOrderDetail: const EcommerceOrderDetailScreen(),
    AppScreen.paymentDashboard: const PaymentDashboardScreen(),
    AppScreen.paymentTransactions: const PaymentTransactionsScreen(),
    AppScreen.hotelDashboard: const HotelDashboardScreen(),
    AppScreen.hotelBooking: const HotelBookingScreen(),
    AppScreen.projectManagementDashboard:
        const ProjectManagementDashboardScreen(),
    AppScreen.projectProjectList: const ProjectProjectListScreen(),
    AppScreen.salesDashboard: const SalesDashboardScreen(),
    AppScreen.crmDashboard: const CrmDashboardScreen(),
    AppScreen.websiteAnalyticsDashboard:
        const WebsiteAnalyticsDashboardScreen(),
    AppScreen.fileManagerDashboard: const FileManagerDashboardScreen(),
    AppScreen.cryptoDashboard: const CryptoDashboardScreen(),
    AppScreen.academyDashboard: const AcademyDashboardScreen(),
    AppScreen.hospitalManagementDashboard:
        const HospitalManagementDashboardScreen(),
    AppScreen.financeDashboard: const FinanceDashboardScreen(),
    // Apps
    AppScreen.kanbanBoardApp: const KanbanBoardAppScreen(),
    AppScreen.notesApp: const NotesAppScreen(),
    AppScreen.chatsApp: const ChatsAppScreen(),
    AppScreen.socialMediaApp: const SocialMediaAppScreen(),
    AppScreen.mailApp: const MailAppScreen(),
    AppScreen.todoListApp: const TodoListAppScreen(),
    AppScreen.tasksApp: const TasksAppScreen(),
    AppScreen.calendarApp: const CalendarAppScreen(),
    AppScreen.fileManagerApp: const FileManagerAppScreen(),
    AppScreen.apiKeysApp: const ApiKeysAppScreen(),
    AppScreen.posApp: const PosAppScreen(),
    AppScreen.coursesApp: const CoursesAppScreen(),
    // AI Apps
    AppScreen.aiChatAiApp: const AiChatAiAppScreen(),
    AppScreen.imageGenerateAiApp: const ImageGenerateAiAppScreen(),
    AppScreen.textToSpeechAiApp: const TextToSpeechAiAppScreen(),
    // Pages
    AppScreen.usersListPage: const UsersListPageScreen(),
    AppScreen.profilePage: const ProfilePageScreen(),
    AppScreen.onboardingFlowPage: const OnboardingFlowPageScreen(),
    AppScreen.emptyStates01Page: const EmptyStates01PageScreen(),
    AppScreen.emptyStates02Page: const EmptyStates02PageScreen(),
    AppScreen.emptyStates03Page: const EmptyStates03PageScreen(),
    // Settings
    AppScreen.settingsProfilePage: const SettingsProfilePageScreen(),
    AppScreen.settingsAccountPage: const SettingsAccountPageScreen(),
    AppScreen.settingsBillingPage: const SettingsBillingPageScreen(),
    AppScreen.settingsAppearancePage: const SettingsAppearancePageScreen(),
    AppScreen.settingsNotificationsPage:
        const SettingsNotificationsPageScreen(),
    AppScreen.settingsDisplayPage: const SettingsDisplayPageScreen(),
    // Pricing
    AppScreen.pricingColumnPage: const PricingColumnPageScreen(),
    AppScreen.pricingTablePage: const PricingTablePageScreen(),
    AppScreen.pricingSinglePage: const PricingSinglePageScreen(),
    // Authentication
    AppScreen.authenticationLoginPage: const AuthenticationLoginPageScreen(),
    AppScreen.authenticationRegisterPage:
        const AuthenticationRegisterPageScreen(),
    AppScreen.authenticationForgotPasswordPage:
        const AuthenticationForgotPasswordPageScreen(),
    // Error pages
    AppScreen.error404Page: const Error404PageScreen(),
    AppScreen.error500Page: const Error500PageScreen(),
    AppScreen.error403Page: const Error403PageScreen(),
  };

  void _selectPage(AppScreen page) {
    setState(() => selectedPage = page);
  }

  void _toggleSubmenu(int index) {
    setState(() => openSubmenuIndex = openSubmenuIndex == index ? null : index);
  }

  int _getSubmenuIndex(NavigationRailItem item) {
    int index = 0;
    for (final category in navigationCategories) {
      for (final navItem in category.items) {
        if (navItem == item) return index;
        index++;
      }
    }
    return -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: SafeArea(
        child: Row(
          crossAxisAlignment: .stretch,
          children: [
            NavigationRail(
              labelType: expanded ? .expanded : .tooltip,
              labelPosition: .end,
              alignment: .start,
              expanded: expanded,
              children: [
                NavigationWidget(
                  child: Column(
                    crossAxisAlignment: .stretch,
                    children: _buildNavigationItems(),
                  ),
                ),
              ],
            ),

            Expanded(
              child: Padding(
                padding: const .only(top: 8, right: 8, bottom: 8, left: 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.card,
                    borderRadius: .circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      _buildAppBar(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: screens[selectedPage],
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

  List<Widget> _buildNavigationItems() {
    final items = <Widget>[
      NavigationButton(
        alignment: Alignment.centerLeft,
        child: const Icon(LucideIcons.layoutDashboard),
      ),
      const NavigationDivider(),
    ];

    for (final category in navigationCategories) {
      items.add(_buildCategoryLabel(category.title));

      for (final item in category.items) {
        if (item.hasChildren) {
          final submenuIndex = _getSubmenuIndex(item);
          items.add(
            NavigationSubmenu(
              expanded: expanded,
              isOpen: openSubmenuIndex == submenuIndex,
              onToggle: () => _toggleSubmenu(submenuIndex),
              label: item.label,
              icon: item.icon,
              children: item.children!
                  .map((child) => _buildSubButton(child.label, child.screen))
                  .toList(),
            ),
          );
        } else {
          items.add(_buildButton(item.label, item.icon, item.screen));
        }
      }
    }

    return items;
  }

  NavigationLabel _buildCategoryLabel(String label) {
    return NavigationLabel(
      alignment: .centerLeft,
      child: Text(label).semiBold().muted(),
    );
  }

  NavigationItem _buildButton(String label, IconData icon, AppScreen page) {
    return NavigationItem(
      alignment: .centerLeft,
      selectedStyle: const ButtonStyle.primaryIcon(),
      selected: selectedPage == page,
      onChanged: (_) {
        setState(() {
          selectedPage = page;
        });
      },
      label: Text(label),
      child: Icon(icon),
    );
  }

  NavigationItem _buildSubButton(String label, AppScreen page) {
    return NavigationItem(
      alignment: Alignment.centerLeft,
      selectedStyle: const ButtonStyle.primaryIcon(),
      selected: selectedPage == page,
      onChanged: (_) => _selectPage(page),
      child: Text(label),
    );
  }

  Widget _buildAppBar() {
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
            onPressed: () {
              setState(() {
                expanded = !expanded;
              });
            },
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
            onPressed: () {},
            icon: const Icon(LucideIcons.moon, size: 16),
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

enum AppScreen {
  // Dashboards
  classicDashboard,
  // e-commerce children start
  ecommerceDashboard,
  ecommerceProductList,
  ecommerceProductDetail,
  ecommerceAddProduct,
  ecommerceOrderList,
  ecommerceOrderDetail,
  // e-commerce children end
  // Payment children start
  paymentDashboard,
  paymentTransactions,
  // Payment children end
  // Hotel children start
  hotelDashboard,
  hotelBooking,
  // Hotel children end
  // Project management children start
  projectManagementDashboard,
  projectProjectList,
  // Project management children end
  salesDashboard,
  crmDashboard,
  websiteAnalyticsDashboard,
  fileManagerDashboard,
  cryptoDashboard,
  academyDashboard,
  hospitalManagementDashboard,
  financeDashboard,
  // Apps
  kanbanBoardApp,
  notesApp,
  chatsApp,
  socialMediaApp,
  mailApp,
  todoListApp,
  tasksApp,
  calendarApp,
  fileManagerApp,
  apiKeysApp,
  posApp,
  coursesApp,
  // AI Apps
  aiChatAiApp,
  imageGenerateAiApp,
  textToSpeechAiApp,
  // Pages
  usersListPage,
  profilePage,
  onboardingFlowPage,
  emptyStates01Page,
  emptyStates02Page,
  emptyStates03Page,
  // Settings children start
  settingsProfilePage,
  settingsAccountPage,
  settingsBillingPage,
  settingsAppearancePage,
  settingsNotificationsPage,
  settingsDisplayPage,
  // Settings children end
  // Pricing children start
  pricingColumnPage,
  pricingTablePage,
  pricingSinglePage,
  // Pricing children end
  // Authentication children start
  authenticationLoginPage,
  authenticationRegisterPage,
  authenticationForgotPasswordPage,
  // Authentication children end
  // Error children start
  error404Page,
  error500Page,
  error403Page,
  // Error children end
}

class NavigationRailItem {
  final String label;
  final IconData icon;
  final AppScreen screen;
  final List<NavigationRailItem>? children;

  const NavigationRailItem({
    required this.label,
    required this.icon,
    required this.screen,
    this.children,
  });

  bool get hasChildren => children != null && children!.isNotEmpty;
}

class NavigationCategory {
  final String title;
  final List<NavigationRailItem> items;

  const NavigationCategory({required this.title, required this.items});
}

class NavigationSubmenu extends NavigationWidget {
  NavigationSubmenu({
    super.key,
    required bool expanded,
    required bool isOpen,
    required VoidCallback onToggle,
    required String label,
    required IconData icon,
    required List<Widget> children,
  }) : super(
         child: NavigationSubmenuBody(
           expanded: expanded,
           isOpen: isOpen,
           onToggle: onToggle,
           label: label,
           icon: icon,
           children: children,
         ),
       );
}

class NavigationSubmenuBody extends StatelessWidget {
  final bool expanded;
  final bool isOpen;
  final VoidCallback onToggle;
  final String label;
  final IconData icon;
  final List<Widget> children;

  const NavigationSubmenuBody({
    super.key,
    required this.expanded,
    required this.isOpen,
    required this.onToggle,
    required this.label,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationWidget(
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          if (expanded) ...{
            GhostButton(
              onPressed: onToggle,
              leading: Icon(icon),
              density: .icon,
              trailing: Icon(
                isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              ),
              child: Text(label),
            ),
            if (isOpen)
              Padding(
                padding: const .only(left: 16),
                child: Container(
                  padding: const .only(left: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Theme.of(context).colorScheme.border,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: .stretch,
                    children: children,
                  ),
                ),
              ),
          } else ...{
            Builder(
              builder: (context) {
                return IconButton.ghost(
                  icon: Icon(icon),
                  onPressed: () {
                    showPopover(
                      context: context,
                      alignment: .topLeft,
                      offset: const Offset(0, 0),
                      overlayBarrier: OverlayBarrier(
                        borderRadius: Theme.of(context).borderRadiusLg,
                      ),
                      builder: (context) {
                        return ModalContainer(
                          padding: const .all(8),
                          child: Wrap(direction: .vertical, children: children),
                        );
                      },
                    );
                  },
                );
              },
            ),
          },
        ],
      ),
    );
  }
}

// Possible updates to
// default_screen.dart
// and
// main.dart

// import 'package:flutter_shad/screens/default_screen.dart';
// import 'package:shadcn_flutter/shadcn_flutter.dart';

// void main() {
//   runApp(const FlutterShad());
// }

// class FlutterShad extends StatefulWidget {
//   const FlutterShad({super.key});

//   @override
//   State<FlutterShad> createState() => FlutterShadState();
// }

// class FlutterShadState extends State<FlutterShad> {
//   ThemeMode _themeMode = ThemeMode.dark;

//   void _toggleTheme() {
//     setState(() {
//       _themeMode = _themeMode == ThemeMode.light
//           ? ThemeMode.dark
//           : ThemeMode.light;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ShadcnApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(colorScheme: ColorSchemes.lightNeutral),
//       darkTheme: ThemeData.dark(colorScheme: ColorSchemes.darkNeutral),
//       themeMode: _themeMode,
//       title: "Flutter shadcn",
//       home: DefaultScreen(onThemeToggle: _toggleTheme, themeMode: _themeMode),
//     );
//   }
// }

// import 'package:shadcn_flutter/shadcn_flutter.dart';

// class DefaultScreen extends StatefulWidget {
//   final VoidCallback onThemeToggle;
//   final ThemeMode themeMode;

//   const DefaultScreen({
//     super.key,
//     required this.onThemeToggle,
//     required this.themeMode,
//   });

//   @override
//   State<DefaultScreen> createState() => DefaultScreenState();
// }

// class DefaultScreenState extends State<DefaultScreen> {
//   bool sidebarExpanded = true;
//   DashboardRoute activeRoute = DashboardRoute.first;

//   void toggleSidebar() {
//     setState(() => sidebarExpanded = !sidebarExpanded);
//   }

//   void setRoute(DashboardRoute route) {
//     setState(() => activeRoute = route);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       child: Row(
//         children: [
//           DashboardSidebar(
//             expanded: sidebarExpanded,
//             activeRoute: activeRoute,
//             onRouteSelected: setRoute,
//           ),
//           Expanded(
//             child: DashboardShell(
//               onToggleSidebar: toggleSidebar,
//               onThemeToggle: widget.onThemeToggle,
//               themeMode: widget.themeMode,
//               child: dashboardRouteBuilder(activeRoute),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget dashboardRouteBuilder(DashboardRoute route) {
//     switch (route) {
//       case DashboardRoute.first:
//         return const FirstScreen();
//       case DashboardRoute.second:
//         return const SecondScreen();
//     }
//   }
// }

// enum DashboardRoute { first, second }

// class DashboardSidebar extends StatelessWidget {
//   final bool expanded;
//   final DashboardRoute activeRoute;
//   final ValueChanged<DashboardRoute> onRouteSelected;

//   const DashboardSidebar({
//     super.key,
//     required this.expanded,
//     required this.activeRoute,
//     required this.onRouteSelected,
//   });

//   static const sidebarRoutes = [
//     SidebarRouteItem(
//       route: DashboardRoute.first,
//       label: 'First Screen',
//       icon: LucideIcons.chartPie,
//     ),
//     SidebarRouteItem(
//       route: DashboardRoute.second,
//       label: 'Second Screen',
//       icon: LucideIcons.chartPie,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 200),
//       width: expanded ? 240 : 72,
//       decoration: BoxDecoration(
//         border: Border(right: BorderSide(color: theme.colorScheme.border)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           _SidebarHeader(expanded: expanded),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               ...sidebarRoutes.map(
//                 (item) => SidebarItem(
//                   item: item,
//                   expanded: expanded,
//                   selected: item.route == activeRoute,
//                   onTap: () => onRouteSelected(item.route),
//                 ),
//               ),
//             ],
//           ).gap(8).withPadding(horizontal: 16),
//         ],
//       ).gap(8),
//     );
//   }
// }

// class _SidebarHeader extends StatelessWidget {
//   final bool expanded;

//   const _SidebarHeader({required this.expanded});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Container(
//       decoration: BoxDecoration(
//         border: Border(bottom: BorderSide(color: theme.colorScheme.border)),
//       ),
//       height: 72,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (expanded)
//             const Text("Flutter Dashboard")
//           else
//             const Icon(LucideIcons.layoutDashboard),
//         ],
//       ),
//     );
//   }
// }

// class DashboardAppBar extends StatelessWidget {
//   final VoidCallback onToggleSidebar;
//   final VoidCallback onThemeToggle;
//   final ThemeMode themeMode;

//   const DashboardAppBar({
//     super.key,
//     required this.onToggleSidebar,
//     required this.onThemeToggle,
//     required this.themeMode,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Container(
//       height: 64,
//       decoration: BoxDecoration(
//         border: Border(bottom: BorderSide(color: theme.colorScheme.border)),
//       ),
//       child: Row(
//         spacing: 8,
//         children: [
//           IconButton.ghost(
//             onPressed: onToggleSidebar,
//             icon: const Icon(LucideIcons.panelLeft, size: 16),
//           ),
//           const SizedBox(height: 16, child: VerticalDivider()),
//           IconButton.ghost(
//             onPressed: () {},
//             icon: const Icon(LucideIcons.search, size: 16),
//           ),
//           const Spacer(),
//           const NotificationsMenu(),
//           IconButton.ghost(
//             onPressed: onThemeToggle,
//             icon: Icon(
//               themeMode == ThemeMode.dark ? LucideIcons.sun : LucideIcons.moon,
//               size: 16,
//             ),
//           ),
//           const ThemeMenu(),
//           const SizedBox(height: 16, child: VerticalDivider()),
//           const UserMenu(),
//         ],
//       ).withPadding(horizontal: 16),
//     );
//   }
// }

// class DashboardShell extends StatelessWidget {
//   final Widget child;
//   final VoidCallback onToggleSidebar;
//   final VoidCallback onThemeToggle;
//   final ThemeMode themeMode;

//   const DashboardShell({
//     super.key,
//     required this.child,
//     required this.onToggleSidebar,
//     required this.onThemeToggle,
//     required this.themeMode,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Container(
//       margin: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         border: Border.all(color: theme.colorScheme.border),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           DashboardAppBar(
//             onToggleSidebar: onToggleSidebar,
//             onThemeToggle: onThemeToggle,
//             themeMode: themeMode,
//           ),
//           Expanded(child: child),
//         ],
//       ),
//     );
//   }
// }

// class SidebarRouteItem {
//   final DashboardRoute route;
//   final String label;
//   final IconData icon;

//   const SidebarRouteItem({
//     required this.route,
//     required this.label,
//     required this.icon,
//   });
// }

// class SidebarItem extends StatelessWidget {
//   final SidebarRouteItem item;
//   final bool selected;
//   final bool expanded;
//   final VoidCallback onTap;

//   const SidebarItem({
//     super.key,
//     required this.item,
//     required this.selected,
//     required this.expanded,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Button(
//       onPressed: onTap,
//       style: selected ? ButtonStyle.primary() : ButtonStyle.ghost(),
//       leading: Icon(item.icon, size: 16),
//       child: expanded ? Text(item.label) : const SizedBox.shrink(),
//     );
//   }
// }

// class NotificationsMenu extends StatelessWidget {
//   const NotificationsMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Builder(
//       builder: (context) {
//         return IconButton.ghost(
//           onPressed: () {
//             showDropdown(
//               context: context,
//               alignment: Alignment.bottomRight,
//               builder: (context) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     color: theme.colorScheme.card,
//                     border: Border.all(color: theme.colorScheme.border),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   width: 280,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         decoration: BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(color: theme.colorScheme.border),
//                           ),
//                         ),
//                         height: 48,
//                         child: Row(
//                           children: [
//                             const Text("Notifications").small(),
//                             const Spacer(),
//                             TextButton(
//                               onPressed: () {},
//                               density: ButtonDensity.dense,
//                               child: const Text("View all"),
//                             ),
//                           ],
//                         ),
//                       ),

//                       Container(
//                         padding: const EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(color: theme.colorScheme.border),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             Avatar(
//                               size: 24,
//                               initials: Avatar.getInitials("ts paja"),
//                               provider: const NetworkImage(
//                                 "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text("Your order is placed").small(),
//                                 const Text(
//                                   "Amet minim mallit non deser unt...",
//                                 ).muted().small(),
//                                 const Text("2 days ago").muted().small(),
//                               ],
//                             ),
//                           ],
//                         ).gap(8),
//                       ),

//                       Container(
//                         padding: const EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(color: theme.colorScheme.border),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             Avatar(
//                               size: 24,
//                               initials: Avatar.getInitials("ts paja"),
//                               provider: const NetworkImage(
//                                 "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text("Congratulations Darlene").small(),
//                                 const Text(
//                                   "Won the monthly best selled badge",
//                                 ).muted().small(),
//                                 const Text("2 days ago").muted().small(),
//                               ],
//                             ),
//                           ],
//                         ).gap(8),
//                       ),

//                       Container(
//                         padding: const EdgeInsets.all(16),
//                         child: Row(
//                           children: [
//                             Avatar(
//                               size: 24,
//                               initials: Avatar.getInitials("ts paja"),
//                               provider: const NetworkImage(
//                                 "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text("Joaquina Weisenborn").small(),
//                                 const Text(
//                                   "Requesting access permission",
//                                 ).muted().small(),
//                                 Row(
//                                   children: [
//                                     OutlineButton(
//                                       onPressed: () {},
//                                       density: ButtonDensity.dense,
//                                       child: const Text("Accept"),
//                                     ),
//                                     OutlineButton(
//                                       onPressed: () {},
//                                       density: ButtonDensity.dense,
//                                       child: const Text("Decline"),
//                                     ),
//                                   ],
//                                 ).gap(8),
//                                 const Text("2 days ago").muted().small(),
//                               ],
//                             ).gap(4),
//                           ],
//                         ).gap(8),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           },
//           icon: const Icon(LucideIcons.bell, size: 16),
//         );
//       },
//     );
//   }
// }

// class ThemeMenu extends StatefulWidget {
//   const ThemeMenu({super.key});

//   @override
//   State<ThemeMenu> createState() => ThemeMenuState();
// }

// class ThemeMenuState extends State<ThemeMenu> {
//   String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Builder(
//       builder: (context) {
//         return IconButton.ghost(
//           onPressed: () {
//             showDropdown(
//               context: context,
//               alignment: Alignment.bottomRight,
//               builder: (context) {
//                 return Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: theme.colorScheme.card,
//                     border: Border.all(color: theme.colorScheme.border),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   width: 280,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       const Text("Theme preset").small(),

//                       const SizedBox(height: 16),

//                       Select<String>(
//                         itemBuilder: (context, item) {
//                           return Text(item);
//                         },
//                         popupConstraints: const BoxConstraints(
//                           maxHeight: 300,
//                           maxWidth: 200,
//                         ),
//                         onChanged: (value) {
//                           setState(() {
//                             selectedValue = value;
//                           });
//                         },
//                         value: selectedValue,
//                         placeholder: const Text("Default"),
//                         popup: const SelectPopup(
//                           items: SelectItemList(
//                             children: [
//                               SelectItemButton(
//                                 value: "Default",
//                                 child: Text("Default"),
//                               ),
//                             ],
//                           ),
//                         ).call,
//                       ),

//                       const SizedBox(height: 16),

//                       const Text("Scale:"),

//                       const SizedBox(height: 16),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Icon(LucideIcons.ban, size: 16),
//                           ),
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Text("XS"),
//                           ),
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Text("LG"),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 16),

//                       const Text("Radius:"),

//                       const SizedBox(height: 16),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Icon(LucideIcons.ban, size: 16),
//                           ),
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Text("SM"),
//                           ),
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Text("MD"),
//                           ),
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Text("LG"),
//                           ),
//                           OutlineButton(
//                             onPressed: () {},
//                             density: ButtonDensity.dense,
//                             child: const Text("XL"),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 16),

//                       const Text("Color mode:"),

//                       const SizedBox(height: 16),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           OutlineButton(
//                             onPressed: () {},
//                             child: const Text("Light"),
//                           ),
//                           OutlineButton(
//                             onPressed: () {},
//                             child: const Text("Dark"),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 16),

//                       SizedBox(
//                         width: double.infinity,
//                         child: PrimaryButton(
//                           onPressed: () {},
//                           child: const Text("Reset to Default"),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           },
//           icon: const Icon(LucideIcons.palette, size: 16),
//         );
//       },
//     );
//   }
// }

// class UserMenu extends StatelessWidget {
//   const UserMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Builder(
//       builder: (context) {
//         return IconButton.ghost(
//           onPressed: () {
//             showDropdown(
//               context: context,
//               builder: (context) {
//                 return const DropdownMenu(
//                   children: [
//                     MenuButton(
//                       leading: Icon(LucideIcons.sparkles, size: 16),
//                       child: Text("Upgrade to Pro"),
//                     ),
//                     MenuButton(
//                       leading: Icon(LucideIcons.badgeCheck, size: 16),
//                       child: Text("Account"),
//                     ),
//                     MenuButton(
//                       leading: Icon(LucideIcons.creditCard, size: 16),
//                       child: Text("Billing"),
//                     ),
//                     MenuButton(
//                       leading: Icon(LucideIcons.bell, size: 16),
//                       child: Text("Notifications"),
//                     ),
//                     MenuDivider(),
//                     MenuButton(
//                       leading: Icon(LucideIcons.logOut, size: 16),
//                       child: Text("Log Out"),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//           icon: Avatar(
//             size: 24,
//             initials: Avatar.getInitials("ts paja"),
//             provider: const NetworkImage(
//               "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [const Text("First Screen")],
//     ).withPadding(all: 16);
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [const Text("Second Screen")],
//     ).withPadding(all: 16);
//   }
// }
