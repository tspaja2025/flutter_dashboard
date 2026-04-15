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
import 'package:flutter_dashboard/shared/app_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return AppScaffold(child: child);
        },
        routes: [
          // Dashboards
          GoRoute(
            path: "/",
            name: "classicDashboard",
            builder: (context, state) => const ClassicDashboardScreen(),
          ),
          GoRoute(
            path: "/ecommerce/dashboard",
            name: "ecommerceDashboard",
            builder: (context, state) => const EcommerceDashboardScreen(),
          ),
          GoRoute(
            path: "/ecommerce/product-list",
            name: "ecommerceProductList",
            builder: (context, state) => const EcommerceProductListScreen(),
          ),
          GoRoute(
            path: "/ecommerce/product-detail",
            name: "ecommerceProductDetail",
            builder: (context, state) => const EcommerceProductDetailScreen(),
          ),
          GoRoute(
            path: "/ecommerce/add-product",
            name: "ecommerceAddProduct",
            builder: (context, state) => const EcommerceAddProductScreen(),
          ),
          GoRoute(
            path: "/ecommerce/order-list",
            name: "ecommerceOrderList",
            builder: (context, state) => const EcommerceOrderListScreen(),
          ),
          GoRoute(
            path: "/ecommerce/order-detail",
            name: "ecommerceOrderDetail",
            builder: (context, state) => const EcommerceOrderDetailScreen(),
          ),
          GoRoute(
            path: "/payment/dashboard",
            name: "paymentDashboard",
            builder: (context, state) => const PaymentDashboardScreen(),
          ),
          GoRoute(
            path: "/payment/transactions",
            name: "paymentTransactions",
            builder: (context, state) => const PaymentTransactionsScreen(),
          ),
          GoRoute(
            path: "/hotel/dashboard",
            name: "hotelDashboard",
            builder: (context, state) => const HotelDashboardScreen(),
          ),
          GoRoute(
            path: "/hotel/booking",
            name: "hotelBooking",
            builder: (context, state) => const HotelBookingScreen(),
          ),
          GoRoute(
            path: "/project-management/dashboard",
            name: "projectManagementDashboard",
            builder: (context, state) =>
                const ProjectManagementDashboardScreen(),
          ),
          GoRoute(
            path: "/project-management/project-list",
            name: "projectProjectList",
            builder: (context, state) => const ProjectProjectListScreen(),
          ),
          GoRoute(
            path: "/sales-dashboard",
            name: "salesDashboard",
            builder: (context, state) => const SalesDashboardScreen(),
          ),
          GoRoute(
            path: "/crm-dashboard",
            name: "crmDashboard",
            builder: (context, state) => const CrmDashboardScreen(),
          ),
          GoRoute(
            path: "/website-analytics-dashboard",
            name: "websiteAnalyticsDashboard",
            builder: (context, state) =>
                const WebsiteAnalyticsDashboardScreen(),
          ),
          GoRoute(
            path: "/file-manager-dashboard",
            name: "fileManagerDashboard",
            builder: (context, state) => const FileManagerDashboardScreen(),
          ),
          GoRoute(
            path: "/crypto-dashboard",
            name: "cryptoDashboard",
            builder: (context, state) => const CryptoDashboardScreen(),
          ),
          GoRoute(
            path: "/academy-dashboard",
            name: "academyDashboard",
            builder: (context, state) => const AcademyDashboardScreen(),
          ),
          GoRoute(
            path: "/hospital-management-dashboard",
            name: "hospitalManagementDashboard",
            builder: (context, state) =>
                const HospitalManagementDashboardScreen(),
          ),
          GoRoute(
            path: "/finance-dashboard",
            name: "financeDashboard",
            builder: (context, state) => const FinanceDashboardScreen(),
          ),

          // Apps
          GoRoute(
            path: "/kanban",
            name: "kanbanBoardApp",
            builder: (context, state) => const KanbanBoardAppScreen(),
          ),
          GoRoute(
            path: "/notes",
            name: "notesApp",
            builder: (context, state) => const NotesAppScreen(),
          ),
          GoRoute(
            path: "/chats",
            name: "chatsApp",
            builder: (context, state) => const ChatsAppScreen(),
          ),
          GoRoute(
            path: "/social-media",
            name: "socialMediaApp",
            builder: (context, state) => const SocialMediaAppScreen(),
          ),
          GoRoute(
            path: "/mail",
            name: "mailApp",
            builder: (context, state) => const MailAppScreen(),
          ),
          GoRoute(
            path: "/todo-list",
            name: "todoListApp",
            builder: (context, state) => const TodoListAppScreen(),
          ),
          GoRoute(
            path: "/tasks",
            name: "tasksApp",
            builder: (context, state) => const TasksAppScreen(),
          ),
          GoRoute(
            path: "/calendar",
            name: "calendarApp",
            builder: (context, state) => const CalendarAppScreen(),
          ),
          GoRoute(
            path: "/file-manager",
            name: "fileManagerApp",
            builder: (context, state) => const FileManagerAppScreen(),
          ),
          GoRoute(
            path: "/api-keys",
            name: "apiKeysApp",
            builder: (context, state) => const ApiKeysAppScreen(),
          ),
          GoRoute(
            path: "/pos",
            name: "posApp",
            builder: (context, state) => const PosAppScreen(),
          ),
          GoRoute(
            path: "/courses",
            name: "coursesApp",
            builder: (context, state) => const CoursesAppScreen(),
          ),

          // AI Apps
          GoRoute(
            path: "/ai-chat",
            name: "aiChatAiApp",
            builder: (context, state) => const AiChatAiAppScreen(),
          ),
          GoRoute(
            path: "/image-generator",
            name: "imageGenerateAiApp",
            builder: (context, state) => const ImageGenerateAiAppScreen(),
          ),
          GoRoute(
            path: "/text-to-speech",
            name: "textToSpeechAiApp",
            builder: (context, state) => const TextToSpeechAiAppScreen(),
          ),

          // Pages
          GoRoute(
            path: "/users-list",
            name: "usersListPage",
            builder: (context, state) => const UsersListPageScreen(),
          ),
          GoRoute(
            path: "/profile",
            name: "profilePage",
            builder: (context, state) => const ProfilePageScreen(),
          ),
          GoRoute(
            path: "/onboarding-flow",
            name: "onboardingFlowPage",
            builder: (context, state) => const OnboardingFlowPageScreen(),
          ),
          GoRoute(
            path: "/empty-state-01",
            name: "emptyStates01Page",
            builder: (context, state) => const EmptyStates01PageScreen(),
          ),
          GoRoute(
            path: "/empty-state-02",
            name: "emptyStates02Page",
            builder: (context, state) => const EmptyStates02PageScreen(),
          ),
          GoRoute(
            path: "/empty-state-03",
            name: "emptyStates03Page",
            builder: (context, state) => const EmptyStates03PageScreen(),
          ),
          GoRoute(
            path: "/profile-settings",
            name: "settingsProfilePage",
            builder: (context, state) => const SettingsProfilePageScreen(),
          ),
          GoRoute(
            path: "/account-settings",
            name: "settingsAccountPage",
            builder: (context, state) => const SettingsAccountPageScreen(),
          ),
          GoRoute(
            path: "/billing-settings",
            name: "settingsBillingPage",
            builder: (context, state) => const SettingsBillingPageScreen(),
          ),
          GoRoute(
            path: "/appearance-settings",
            name: "settingsAppearancePage",
            builder: (context, state) => const SettingsAppearancePageScreen(),
          ),
          GoRoute(
            path: "/notification-settings",
            name: "settingsNotificationsPage",
            builder: (context, state) =>
                const SettingsNotificationsPageScreen(),
          ),
          GoRoute(
            path: "/display-settings",
            name: "settingsDisplayPage",
            builder: (context, state) => const SettingsDisplayPageScreen(),
          ),
          GoRoute(
            path: "/column-pricing",
            name: "pricingColumnPage",
            builder: (context, state) => const PricingColumnPageScreen(),
          ),
          GoRoute(
            path: "/table-pricing",
            name: "pricingTablePage",
            builder: (context, state) => const PricingTablePageScreen(),
          ),
          GoRoute(
            path: "/single-pricing",
            name: "pricingSinglePage",
            builder: (context, state) => const PricingSinglePageScreen(),
          ),
          GoRoute(
            path: "/login",
            name: "authenticationLoginPage",
            builder: (context, state) => const AuthenticationLoginPageScreen(),
          ),
          GoRoute(
            path: "/register",
            name: "authenticationRegisterPage",
            builder: (context, state) =>
                const AuthenticationRegisterPageScreen(),
          ),
          GoRoute(
            path: "/forgot-password",
            name: "authenticationForgotPasswordPage",
            builder: (context, state) =>
                const AuthenticationForgotPasswordPageScreen(),
          ),
          GoRoute(
            path: "/404",
            name: "error404Page",
            builder: (context, state) => const Error404PageScreen(),
          ),
          GoRoute(
            path: "/500",
            name: "error500Page",
            builder: (context, state) => const Error500PageScreen(),
          ),
          GoRoute(
            path: "/403",
            name: "error403Page",
            builder: (context, state) => const Error403PageScreen(),
          ),
        ],
      ),
    ],
  );
});
