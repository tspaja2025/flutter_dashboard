import 'package:shadcn_flutter/shadcn_flutter.dart';

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
