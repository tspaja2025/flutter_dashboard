import 'package:flutter_dashboard/widget/app_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import "package:shadcn_flutter/shadcn_flutter.dart";
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

class NavigationItemConfig {
  final String label;
  final IconData icon;
  final AppScreen screen;
  final List<NavigationItemConfig>? children;
  final bool isExpanded;

  const NavigationItemConfig({
    required this.label,
    required this.icon,
    required this.screen,
    this.children,
    this.isExpanded = false,
  });

  bool get hasChildren => children != null && children!.isNotEmpty;
}

class NavigationSection {
  final String label;
  final List<NavigationItemConfig> items;

  const NavigationSection({required this.label, required this.items});
}

final List<NavigationSection> navigationSections = [
  NavigationSection(
    label: 'Dashboards',
    items: [
      NavigationItemConfig(
        label: 'Classic Dashboard',
        icon: LucideIcons.chartPie,
        screen: AppScreen.classicDashboard,
      ),
      NavigationItemConfig(
        label: 'E-commerce',
        icon: LucideIcons.shoppingBag,
        screen: AppScreen.ecommerceDashboard,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Dashboard',
            icon: LucideIcons.shoppingBag,
            screen: AppScreen.ecommerceDashboard,
          ),
          NavigationItemConfig(
            label: 'Product List',
            icon: LucideIcons.list,
            screen: AppScreen.ecommerceProductList,
          ),
          NavigationItemConfig(
            label: 'Product Detail',
            icon: LucideIcons.fileText,
            screen: AppScreen.ecommerceProductDetail,
          ),
          NavigationItemConfig(
            label: 'Add Product',
            icon: LucideIcons.plus,
            screen: AppScreen.ecommerceAddProduct,
          ),
          NavigationItemConfig(
            label: 'Order List',
            icon: LucideIcons.listOrdered,
            screen: AppScreen.ecommerceOrderList,
          ),
          NavigationItemConfig(
            label: 'Order Detail',
            icon: LucideIcons.fileText,
            screen: AppScreen.ecommerceOrderDetail,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Payment Dashboard',
        icon: LucideIcons.creditCard,
        screen: AppScreen.paymentDashboard,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Dashboard',
            icon: LucideIcons.creditCard,
            screen: AppScreen.paymentDashboard,
          ),
          NavigationItemConfig(
            label: 'Transactions',
            icon: LucideIcons.history,
            screen: AppScreen.paymentTransactions,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Hotel Dashboard',
        icon: LucideIcons.building,
        screen: AppScreen.hotelDashboard,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Dashboard',
            icon: LucideIcons.building,
            screen: AppScreen.hotelDashboard,
          ),
          NavigationItemConfig(
            label: 'Booking',
            icon: LucideIcons.calendarCheck,
            screen: AppScreen.hotelBooking,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Project Management',
        icon: LucideIcons.folderPlus,
        screen: AppScreen.projectManagementDashboard,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Dashboard',
            icon: LucideIcons.folderPlus,
            screen: AppScreen.projectManagementDashboard,
          ),
          NavigationItemConfig(
            label: 'Project List',
            icon: LucideIcons.listChecks,
            screen: AppScreen.projectProjectList,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Sales',
        icon: LucideIcons.circleDollarSign,
        screen: AppScreen.salesDashboard,
      ),
      NavigationItemConfig(
        label: 'CRM',
        icon: LucideIcons.chartBarDecreasing,
        screen: AppScreen.crmDashboard,
      ),
      NavigationItemConfig(
        label: 'Website Analytics',
        icon: LucideIcons.gauge,
        screen: AppScreen.websiteAnalyticsDashboard,
      ),
      NavigationItemConfig(
        label: 'File Manager',
        icon: LucideIcons.folder,
        screen: AppScreen.fileManagerDashboard,
      ),
      NavigationItemConfig(
        label: 'Crypto',
        icon: LucideIcons.wallet,
        screen: AppScreen.cryptoDashboard,
      ),
      NavigationItemConfig(
        label: 'Academy/School',
        icon: LucideIcons.graduationCap,
        screen: AppScreen.academyDashboard,
      ),
      NavigationItemConfig(
        label: 'Hospital management',
        icon: LucideIcons.heartPulse,
        screen: AppScreen.hospitalManagementDashboard,
      ),
      NavigationItemConfig(
        label: 'Finance Dashboard',
        icon: LucideIcons.walletCards,
        screen: AppScreen.financeDashboard,
      ),
    ],
  ),
  NavigationSection(
    label: 'Apps',
    items: [
      NavigationItemConfig(
        label: 'Kanban',
        icon: LucideIcons.kanban,
        screen: AppScreen.kanbanBoardApp,
      ),
      NavigationItemConfig(
        label: 'Notes',
        icon: LucideIcons.stickyNote,
        screen: AppScreen.notesApp,
      ),
      NavigationItemConfig(
        label: 'Chats',
        icon: LucideIcons.messageSquare,
        screen: AppScreen.chatsApp,
      ),
      NavigationItemConfig(
        label: 'Social Media',
        icon: LucideIcons.messageSquareHeart,
        screen: AppScreen.socialMediaApp,
      ),
      NavigationItemConfig(
        label: 'Mail',
        icon: LucideIcons.mail,
        screen: AppScreen.mailApp,
      ),
      NavigationItemConfig(
        label: 'Todo List App',
        icon: LucideIcons.listTodo,
        screen: AppScreen.todoListApp,
      ),
      NavigationItemConfig(
        label: 'Tasks',
        icon: LucideIcons.clipboardCheck,
        screen: AppScreen.tasksApp,
      ),
      NavigationItemConfig(
        label: 'Calendar',
        icon: LucideIcons.calendar,
        screen: AppScreen.calendarApp,
      ),
      NavigationItemConfig(
        label: 'File Manager',
        icon: LucideIcons.fileArchive,
        screen: AppScreen.fileManagerApp,
      ),
      NavigationItemConfig(
        label: 'Api Keys',
        icon: LucideIcons.key,
        screen: AppScreen.apiKeysApp,
      ),
      NavigationItemConfig(
        label: 'POS App',
        icon: LucideIcons.cookie,
        screen: AppScreen.posApp,
      ),
      NavigationItemConfig(
        label: 'Courses',
        icon: LucideIcons.bookA,
        screen: AppScreen.coursesApp,
      ),
    ],
  ),
  NavigationSection(
    label: 'AI Apps',
    items: [
      NavigationItemConfig(
        label: 'AI Chat',
        icon: LucideIcons.brainCircuit,
        screen: AppScreen.aiChatAiApp,
      ),
      NavigationItemConfig(
        label: 'Image Generator',
        icon: LucideIcons.images,
        screen: AppScreen.imageGenerateAiApp,
      ),
      NavigationItemConfig(
        label: 'Text to Speech',
        icon: LucideIcons.speech,
        screen: AppScreen.textToSpeechAiApp,
      ),
    ],
  ),
  NavigationSection(
    label: 'Pages',
    items: [
      NavigationItemConfig(
        label: 'Users List',
        icon: LucideIcons.users,
        screen: AppScreen.usersListPage,
      ),
      NavigationItemConfig(
        label: 'Profile',
        icon: LucideIcons.user,
        screen: AppScreen.profilePage,
      ),
      NavigationItemConfig(
        label: 'Onboarding Flow',
        icon: LucideIcons.redoDot,
        screen: AppScreen.onboardingFlowPage,
      ),
      NavigationItemConfig(
        label: 'Empty States',
        icon: LucideIcons.brush,
        screen: AppScreen.emptyStates01Page,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Empty States 01',
            icon: LucideIcons.user,
            screen: AppScreen.emptyStates01Page,
          ),
          NavigationItemConfig(
            label: 'Empty States 02',
            icon: LucideIcons.user,
            screen: AppScreen.emptyStates02Page,
          ),
          NavigationItemConfig(
            label: 'Empty States 03',
            icon: LucideIcons.user,
            screen: AppScreen.emptyStates03Page,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Settings',
        icon: LucideIcons.cog,
        screen: AppScreen.settingsProfilePage,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Profile',
            icon: LucideIcons.user,
            screen: AppScreen.settingsProfilePage,
          ),
          NavigationItemConfig(
            label: 'Account',
            icon: LucideIcons.userCog,
            screen: AppScreen.settingsAccountPage,
          ),
          NavigationItemConfig(
            label: 'Billing',
            icon: LucideIcons.creditCard,
            screen: AppScreen.settingsBillingPage,
          ),
          NavigationItemConfig(
            label: 'Appearance',
            icon: LucideIcons.palette,
            screen: AppScreen.settingsAppearancePage,
          ),
          NavigationItemConfig(
            label: 'Notifications',
            icon: LucideIcons.bell,
            screen: AppScreen.settingsNotificationsPage,
          ),
          NavigationItemConfig(
            label: 'Display',
            icon: LucideIcons.monitor,
            screen: AppScreen.settingsDisplayPage,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Pricing',
        icon: LucideIcons.circleDollarSign,
        screen: AppScreen.pricingColumnPage,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Column Pricing',
            icon: LucideIcons.columns2,
            screen: AppScreen.pricingColumnPage,
          ),
          NavigationItemConfig(
            label: 'Table Pricing',
            icon: LucideIcons.table,
            screen: AppScreen.pricingTablePage,
          ),
          NavigationItemConfig(
            label: 'Single Pricing',
            icon: LucideIcons.fileText,
            screen: AppScreen.pricingSinglePage,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Authentication',
        icon: LucideIcons.fingerprint,
        screen: AppScreen.authenticationLoginPage,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: 'Login',
            icon: LucideIcons.logIn,
            screen: AppScreen.authenticationLoginPage,
          ),
          NavigationItemConfig(
            label: 'Register',
            icon: LucideIcons.userPlus,
            screen: AppScreen.authenticationRegisterPage,
          ),
          NavigationItemConfig(
            label: 'Forgot Password',
            icon: LucideIcons.key,
            screen: AppScreen.authenticationForgotPasswordPage,
          ),
        ],
      ),
      NavigationItemConfig(
        label: 'Error Pages',
        icon: LucideIcons.shieldAlert,
        screen: AppScreen.error404Page,
        isExpanded: true,
        children: [
          NavigationItemConfig(
            label: '404',
            icon: LucideIcons.fileQuestion,
            screen: AppScreen.error404Page,
          ),
          NavigationItemConfig(
            label: '500',
            icon: LucideIcons.server,
            screen: AppScreen.error500Page,
          ),
          NavigationItemConfig(
            label: '403',
            icon: LucideIcons.shieldBan,
            screen: AppScreen.error403Page,
          ),
        ],
      ),
    ],
  ),
];

class ScreenBuilder {
  static Widget buildScreen(AppScreen screen) {
    switch (screen) {
      // Dashboards
      case AppScreen.classicDashboard:
        return const ClassicDashboardScreen();
      case AppScreen.ecommerceDashboard:
        return const EcommerceDashboardScreen();
      case AppScreen.ecommerceProductList:
        return const EcommerceProductListScreen();
      case AppScreen.ecommerceProductDetail:
        return const EcommerceProductDetailScreen();
      case AppScreen.ecommerceAddProduct:
        return const EcommerceAddProductScreen();
      case AppScreen.ecommerceOrderList:
        return const EcommerceOrderListScreen();
      case AppScreen.ecommerceOrderDetail:
        return const EcommerceOrderDetailScreen();
      case AppScreen.paymentDashboard:
        return const PaymentDashboardScreen();
      case AppScreen.paymentTransactions:
        return const PaymentTransactionsScreen();
      case AppScreen.hotelDashboard:
        return const HotelDashboardScreen();
      case AppScreen.hotelBooking:
        return const HotelBookingScreen();
      case AppScreen.projectManagementDashboard:
        return const ProjectManagementDashboardScreen();
      case AppScreen.projectProjectList:
        return const ProjectProjectListScreen();
      case AppScreen.salesDashboard:
        return const SalesDashboardScreen();
      case AppScreen.crmDashboard:
        return const CrmDashboardScreen();
      case AppScreen.websiteAnalyticsDashboard:
        return const WebsiteAnalyticsDashboardScreen();
      case AppScreen.fileManagerDashboard:
        return const FileManagerDashboardScreen();
      case AppScreen.cryptoDashboard:
        return const CryptoDashboardScreen();
      case AppScreen.academyDashboard:
        return const AcademyDashboardScreen();
      case AppScreen.hospitalManagementDashboard:
        return const HospitalManagementDashboardScreen();
      case AppScreen.financeDashboard:
        return const FinanceDashboardScreen();

      // Apps
      case AppScreen.kanbanBoardApp:
        return const KanbanBoardAppScreen();
      case AppScreen.notesApp:
        return const NotesAppScreen();
      case AppScreen.chatsApp:
        return const ChatsAppScreen();
      case AppScreen.socialMediaApp:
        return const SocialMediaAppScreen();
      case AppScreen.mailApp:
        return const MailAppScreen();
      case AppScreen.todoListApp:
        return const TodoListAppScreen();
      case AppScreen.tasksApp:
        return const TasksAppScreen();
      case AppScreen.calendarApp:
        return const CalendarAppScreen();
      case AppScreen.fileManagerApp:
        return const FileManagerAppScreen();
      case AppScreen.apiKeysApp:
        return const ApiKeysAppScreen();
      case AppScreen.posApp:
        return const PosAppScreen();
      case AppScreen.coursesApp:
        return const CoursesAppScreen();

      // AI Apps
      case AppScreen.aiChatAiApp:
        return const AiChatAiAppScreen();
      case AppScreen.imageGenerateAiApp:
        return const ImageGenerateAiAppScreen();
      case AppScreen.textToSpeechAiApp:
        return const TextToSpeechAiAppScreen();

      // Pages
      case AppScreen.usersListPage:
        return const UsersListPageScreen();
      case AppScreen.profilePage:
        return const ProfilePageScreen();
      case AppScreen.onboardingFlowPage:
        return const OnboardingFlowPageScreen();
      case AppScreen.emptyStates01Page:
        return const EmptyStates01PageScreen();
      case AppScreen.emptyStates02Page:
        return const EmptyStates02PageScreen();
      case AppScreen.emptyStates03Page:
        return const EmptyStates03PageScreen();
      case AppScreen.settingsProfilePage:
        return const SettingsProfilePageScreen();
      case AppScreen.settingsAccountPage:
        return const SettingsAccountPageScreen();
      case AppScreen.settingsBillingPage:
        return const SettingsBillingPageScreen();
      case AppScreen.settingsAppearancePage:
        return const SettingsAppearancePageScreen();
      case AppScreen.settingsNotificationsPage:
        return const SettingsNotificationsPageScreen();
      case AppScreen.settingsDisplayPage:
        return const SettingsDisplayPageScreen();
      case AppScreen.pricingColumnPage:
        return const PricingColumnPageScreen();
      case AppScreen.pricingTablePage:
        return const PricingTablePageScreen();
      case AppScreen.pricingSinglePage:
        return const PricingSinglePageScreen();
      case AppScreen.authenticationLoginPage:
        return const AuthenticationLoginPageScreen();
      case AppScreen.authenticationRegisterPage:
        return const AuthenticationRegisterPageScreen();
      case AppScreen.authenticationForgotPasswordPage:
        return const AuthenticationForgotPasswordPageScreen();
      case AppScreen.error404Page:
        return const Error404PageScreen();
      case AppScreen.error500Page:
        return const Error500PageScreen();
      case AppScreen.error403Page:
        return const Error403PageScreen();
    }
  }
}

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => DefaultScreenState();
}

class DefaultScreenState extends State<DefaultScreen> {
  bool expanded = true;
  AppScreen selectedPage = AppScreen.classicDashboard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavigationBuilder(
              expanded: expanded,
              selectedPage: selectedPage,
              onPageSelected: (page) {
                setState(() {
                  selectedPage = page;
                });
              },
              sections: navigationSections,
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
                      Flexible(
                        child: SingleChildScrollView(
                          child: ScreenBuilder.buildScreen(selectedPage),
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
}

// Refactor this file to use:
// * flutter_riverpod
// * go_router
// routerProvider example:
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: "classicDashboard",
        builder: (context, state) => const ClassicDashboardScreen(),
      ),
    ],
  );
});
