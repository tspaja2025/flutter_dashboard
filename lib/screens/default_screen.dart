import "package:flutter_dashboard/screens/ai_apps/ai_chat_ai_app.dart";
import "package:flutter_dashboard/screens/ai_apps/image_generate_ai_app.dart";
import "package:flutter_dashboard/screens/ai_apps/text_to_speech_ai_app.dart";
import "package:flutter_dashboard/screens/apps/api_keys_app.dart";
import "package:flutter_dashboard/screens/apps/calendar_app.dart";
import "package:flutter_dashboard/screens/apps/chats_app.dart";
import "package:flutter_dashboard/screens/apps/courses_app.dart";
import "package:flutter_dashboard/screens/apps/file_manager_app.dart";
import "package:flutter_dashboard/screens/apps/kanban_board_app.dart";
import "package:flutter_dashboard/screens/apps/mail_app.dart";
import "package:flutter_dashboard/screens/apps/notes_app.dart";
import "package:flutter_dashboard/screens/apps/pos_app.dart";
import "package:flutter_dashboard/screens/apps/social_media_app.dart";
import "package:flutter_dashboard/screens/apps/tasks_app.dart";
import "package:flutter_dashboard/screens/apps/todo_list_app.dart";
import "package:flutter_dashboard/screens/dashboards/academy_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/classic_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/crm_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/crypto_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_add_product.dart";
import "package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_order_detail.dart";
import "package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_order_list.dart";
import "package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_product_detail.dart";
import "package:flutter_dashboard/screens/dashboards/ecommerce/ecommerce_product_list.dart";
import "package:flutter_dashboard/screens/dashboards/file_manager_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/finance_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/hospital_management_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/hotel/hotel_booking.dart";
import "package:flutter_dashboard/screens/dashboards/hotel/hotel_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/payment/payment_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/payment/payment_transactions.dart";
import "package:flutter_dashboard/screens/dashboards/project/project_management_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/project/project_project_list.dart";
import "package:flutter_dashboard/screens/dashboards/sales_dashboard.dart";
import "package:flutter_dashboard/screens/dashboards/website_analytics_dashboard.dart";
import "package:flutter_dashboard/screens/pages/authentication/authentication_forgot_password_page.dart";
import "package:flutter_dashboard/screens/pages/authentication/authentication_login_page.dart";
import "package:flutter_dashboard/screens/pages/authentication/authentication_register_page.dart";
import "package:flutter_dashboard/screens/pages/empty_states/empty_state_01_page.dart";
import "package:flutter_dashboard/screens/pages/empty_states/empty_state_02_page.dart";
import "package:flutter_dashboard/screens/pages/empty_states/empty_state_03_page.dart";
import "package:flutter_dashboard/screens/pages/error_pages/error_403_page.dart";
import "package:flutter_dashboard/screens/pages/error_pages/error_404_page.dart";
import "package:flutter_dashboard/screens/pages/error_pages/error_500_page.dart";
import "package:flutter_dashboard/screens/pages/onboarding_flow_page.dart";
import "package:flutter_dashboard/screens/pages/pricing/pricing_column_page.dart";
import "package:flutter_dashboard/screens/pages/pricing/pricing_single_page.dart";
import "package:flutter_dashboard/screens/pages/pricing/pricing_table_page.dart";
import "package:flutter_dashboard/screens/pages/profile_page.dart";
import "package:flutter_dashboard/screens/pages/settings/settings_account_page.dart";
import "package:flutter_dashboard/screens/pages/settings/settings_appearance_page.dart";
import "package:flutter_dashboard/screens/pages/settings/settings_billing_page.dart";
import "package:flutter_dashboard/screens/pages/settings/settings_display_page.dart";
import "package:flutter_dashboard/screens/pages/settings/settings_notifications_page.dart";
import "package:flutter_dashboard/screens/pages/settings/settings_profile_page.dart";
import "package:flutter_dashboard/screens/pages/users_list_page.dart";
import "package:flutter_dashboard/widget/app_bar_widget.dart";
import "package:shadcn_flutter/shadcn_flutter.dart";

class DefaultScreen extends StatefulWidget {
  final VoidCallback onThemeToggle;
  final ThemeMode themeMode;

  const DefaultScreen({
    super.key,
    required this.onThemeToggle,
    required this.themeMode,
  });

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
          crossAxisAlignment: .stretch,
          children: [
            NavigationRail(
              labelType: expanded ? .expanded : .tooltip,
              labelPosition: .end,
              alignment: .start,
              expanded: expanded,
              expandedSize: 240,
              header: [
                Builder(
                  builder: (context) {
                    return NavigationSlot(
                      leading: IconContainer(
                        backgroundColor: Colors.gray,
                        icon: const Icon(LucideIcons.layoutDashboard),
                      ),
                      title: const Text("Flutter Dashboard"),
                      // onPressed: () {},
                    );
                  },
                ),
              ],
              children: [
                buildLabel("Dashboards", [
                  buildButton(
                    "Classic Dashboard",
                    LucideIcons.chartPie,
                    AppScreen.classicDashboard,
                  ),
                  NavigationCollapsible(
                    label: const Text("E-commerce"),
                    leading: const Icon(LucideIcons.shoppingBag),
                    children: [
                      buildButton(
                        "Dashboard",
                        LucideIcons.shoppingBag,
                        AppScreen.ecommerceDashboard,
                      ),
                      buildButton(
                        "Product List",
                        LucideIcons.list,
                        AppScreen.ecommerceProductList,
                      ),
                      buildButton(
                        "Product Detail",
                        LucideIcons.fileText,
                        AppScreen.ecommerceProductDetail,
                      ),
                      buildButton(
                        "Add Product",
                        LucideIcons.plus,
                        AppScreen.ecommerceAddProduct,
                      ),
                      buildButton(
                        "Order List",
                        LucideIcons.listOrdered,
                        AppScreen.ecommerceOrderList,
                      ),
                      buildButton(
                        "Order Detail",
                        LucideIcons.fileText,
                        AppScreen.ecommerceOrderDetail,
                      ),
                    ],
                  ),
                  NavigationCollapsible(
                    label: const Text("Payment Dashboard"),
                    leading: const Icon(LucideIcons.creditCard),
                    children: [
                      buildButton(
                        "Dashboard",
                        LucideIcons.creditCard,
                        AppScreen.paymentDashboard,
                      ),
                      buildButton(
                        "Transactions",
                        LucideIcons.history,
                        AppScreen.paymentTransactions,
                      ),
                    ],
                  ),
                  NavigationCollapsible(
                    label: const Text("Hotel Dashboard"),
                    leading: const Icon(LucideIcons.building),
                    children: [
                      buildButton(
                        "Dashboard",
                        LucideIcons.building,
                        AppScreen.hotelDashboard,
                      ),
                      buildButton(
                        "Booking",
                        LucideIcons.calendarCheck,
                        AppScreen.hotelBooking,
                      ),
                    ],
                  ),
                  NavigationCollapsible(
                    label: const Text("Project Management"),
                    leading: const Icon(LucideIcons.folderPlus),
                    children: [
                      buildButton(
                        "Dashboard",
                        LucideIcons.folderPlus,
                        AppScreen.projectManagementDashboard,
                      ),
                      buildButton(
                        "Project List",
                        LucideIcons.listChecks,
                        AppScreen.projectProjectList,
                      ),
                    ],
                  ),
                  buildButton(
                    "Sales",
                    LucideIcons.circleDollarSign,
                    AppScreen.salesDashboard,
                  ),
                  buildButton(
                    "CRM",
                    LucideIcons.chartBarDecreasing,
                    AppScreen.crmDashboard,
                  ),
                  buildButton(
                    "Website Analytics",
                    LucideIcons.gauge,
                    AppScreen.websiteAnalyticsDashboard,
                  ),
                  buildButton(
                    "File Manager",
                    LucideIcons.folder,
                    AppScreen.fileManagerDashboard,
                  ),
                  buildButton(
                    "Crypto",
                    LucideIcons.wallet,
                    AppScreen.cryptoDashboard,
                  ),
                  buildButton(
                    "Academy/School",
                    LucideIcons.graduationCap,
                    AppScreen.academyDashboard,
                  ),
                  buildButton(
                    "Hospital management",
                    LucideIcons.heartPulse,
                    AppScreen.hospitalManagementDashboard,
                  ),
                  buildButton(
                    "Finance Dashboard",
                    LucideIcons.walletCards,
                    AppScreen.financeDashboard,
                  ),
                ]),
                buildLabel("Apps", [
                  buildButton(
                    "Kanban",
                    LucideIcons.kanban,
                    AppScreen.kanbanBoardApp,
                  ),
                  buildButton(
                    "Notes",
                    LucideIcons.stickyNote,
                    AppScreen.notesApp,
                  ),
                  buildButton(
                    "Chats",
                    LucideIcons.messageSquare,
                    AppScreen.chatsApp,
                  ),
                  buildButton(
                    "Social Media",
                    LucideIcons.messageSquareHeart,
                    AppScreen.socialMediaApp,
                  ),
                  buildButton("Mail", LucideIcons.mail, AppScreen.mailApp),
                  buildButton(
                    "Todo List App",
                    LucideIcons.listTodo,
                    AppScreen.todoListApp,
                  ),
                  buildButton(
                    "Tasks",
                    LucideIcons.clipboardCheck,
                    AppScreen.tasksApp,
                  ),
                  buildButton(
                    "Calendar",
                    LucideIcons.calendar,
                    AppScreen.calendarApp,
                  ),
                  buildButton(
                    "File Manager",
                    LucideIcons.fileArchive,
                    AppScreen.fileManagerApp,
                  ),
                  buildButton(
                    "Api Keys",
                    LucideIcons.key,
                    AppScreen.apiKeysApp,
                  ),
                  buildButton("POS App", LucideIcons.cookie, AppScreen.posApp),
                  buildButton(
                    "Courses",
                    LucideIcons.bookA,
                    AppScreen.coursesApp,
                  ),
                ]),
                buildLabel("AI Apps", [
                  buildButton(
                    "AI Chat",
                    LucideIcons.brainCircuit,
                    AppScreen.aiChatAiApp,
                  ),
                  buildButton(
                    "Image Generator",
                    LucideIcons.images,
                    AppScreen.imageGenerateAiApp,
                  ),
                  buildButton(
                    "Text to Speech",
                    LucideIcons.speech,
                    AppScreen.textToSpeechAiApp,
                  ),
                ]),
                buildLabel("Pages", [
                  buildButton(
                    "Users List",
                    LucideIcons.users,
                    AppScreen.usersListPage,
                  ),
                  buildButton(
                    "Profile",
                    LucideIcons.user,
                    AppScreen.profilePage,
                  ),
                  buildButton(
                    "Onboarding Flow",
                    LucideIcons.redoDot,
                    AppScreen.onboardingFlowPage,
                  ),
                  NavigationCollapsible(
                    label: const Text("Empty States"),
                    leading: const Icon(LucideIcons.brush),
                    children: [
                      buildButton(
                        "Empty States 01",
                        LucideIcons.user,
                        AppScreen.emptyStates01Page,
                      ),
                      buildButton(
                        "Empty States 02",
                        LucideIcons.user,
                        AppScreen.emptyStates02Page,
                      ),
                      buildButton(
                        "Empty States 03",
                        LucideIcons.user,
                        AppScreen.emptyStates03Page,
                      ),
                    ],
                  ),
                  NavigationCollapsible(
                    label: const Text("Settings"),
                    leading: const Icon(LucideIcons.cog),
                    children: [
                      buildButton(
                        "Profile",
                        LucideIcons.user,
                        AppScreen.settingsProfilePage,
                      ),
                      buildButton(
                        "Account",
                        LucideIcons.userCog,
                        AppScreen.settingsAccountPage,
                      ),
                      buildButton(
                        "Billing",
                        LucideIcons.creditCard,
                        AppScreen.settingsBillingPage,
                      ),
                      buildButton(
                        "Appearance",
                        LucideIcons.palette,
                        AppScreen.settingsAppearancePage,
                      ),
                      buildButton(
                        "Notifications",
                        LucideIcons.bell,
                        AppScreen.settingsNotificationsPage,
                      ),
                      buildButton(
                        "Display",
                        LucideIcons.monitor,
                        AppScreen.settingsDisplayPage,
                      ),
                    ],
                  ),
                  NavigationCollapsible(
                    label: const Text("Pricing"),
                    leading: const Icon(LucideIcons.circleDollarSign),
                    children: [
                      buildButton(
                        "Column Pricing",
                        LucideIcons.columns2,
                        AppScreen.pricingColumnPage,
                      ),
                      buildButton(
                        "Table Pricing",
                        LucideIcons.table,
                        AppScreen.pricingTablePage,
                      ),
                      buildButton(
                        "Single Pricing",
                        LucideIcons.fileText,
                        AppScreen.pricingSinglePage,
                      ),
                    ],
                  ),
                  NavigationCollapsible(
                    label: const Text("Authentication"),
                    leading: const Icon(LucideIcons.fingerprint),
                    children: [
                      buildButton(
                        "Login",
                        LucideIcons.logIn,
                        AppScreen.authenticationLoginPage,
                      ),
                      buildButton(
                        "Register",
                        LucideIcons.userPlus,
                        AppScreen.authenticationRegisterPage,
                      ),
                      buildButton(
                        "Forgot Password",
                        LucideIcons.key,
                        AppScreen.authenticationForgotPasswordPage,
                      ),
                    ],
                  ),
                  NavigationCollapsible(
                    label: const Text("Error Pages"),
                    leading: const Icon(LucideIcons.shieldAlert),
                    children: [
                      buildButton(
                        "404",
                        LucideIcons.fileQuestion,
                        AppScreen.error404Page,
                      ),
                      buildButton(
                        "500",
                        LucideIcons.server,
                        AppScreen.error500Page,
                      ),
                      buildButton(
                        "403",
                        LucideIcons.shieldBan,
                        AppScreen.error403Page,
                      ),
                    ],
                  ),
                ]),
              ],
            ),

            Expanded(
              child: Padding(
                padding: const .only(top: 8, right: 8, bottom: 8, left: 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.card,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.border,
                    ),
                    borderRadius: .circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      AppBarWidget(
                        onThemeToggle: widget.onThemeToggle,
                        themeMode: widget.themeMode,
                        onToggleExpanded: () =>
                            setState(() => expanded = !expanded),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: _buildSelectedPage(),
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

  NavigationItem buildButton(String text, IconData icon, AppScreen screen) {
    return NavigationItem(
      label: Text(text),
      selectedStyle: const ButtonStyle.primaryIcon(),
      selected: selectedPage == screen,
      onChanged: (selectedPage) {
        if (selectedPage) {
          setState(() {
            this.selectedPage = screen;
          });
        }
      },
      child: Icon(icon),
    );
  }

  NavigationGroup buildLabel(String label, List<Widget> children) {
    return NavigationGroup(
      labelAlignment: .centerLeft,
      label: Text(label).muted().small(),
      children: children,
    );
  }

  Widget _buildSelectedPage() {
    switch (selectedPage) {
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
