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
            path: "/",
            name: "ecommerceDashboard",
            builder: (context, state) => const EcommerceDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "ecommerceProductList",
            builder: (context, state) => const EcommerceProductListScreen(),
          ),
          GoRoute(
            path: "/",
            name: "ecommerceProductDetail",
            builder: (context, state) => const EcommerceProductDetailScreen(),
          ),
          GoRoute(
            path: "/",
            name: "ecommerceAddProduct",
            builder: (context, state) => const EcommerceAddProductScreen(),
          ),
          GoRoute(
            path: "/",
            name: "ecommerceOrderList",
            builder: (context, state) => const EcommerceOrderListScreen(),
          ),
          GoRoute(
            path: "/",
            name: "ecommerceOrderDetail",
            builder: (context, state) => const EcommerceOrderDetailScreen(),
          ),
          GoRoute(
            path: "/",
            name: "paymentDashboard",
            builder: (context, state) => const PaymentDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "paymentTransactions",
            builder: (context, state) => const PaymentTransactionsScreen(),
          ),
          GoRoute(
            path: "/",
            name: "hotelDashboard",
            builder: (context, state) => const HotelDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "hotelBooking",
            builder: (context, state) => const HotelBookingScreen(),
          ),
          GoRoute(
            path: "/",
            name: "projectManagementDashboard",
            builder: (context, state) =>
                const ProjectManagementDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "projectProjectList",
            builder: (context, state) => const ProjectProjectListScreen(),
          ),
          GoRoute(
            path: "/",
            name: "salesDashboard",
            builder: (context, state) => const SalesDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "crmDashboard",
            builder: (context, state) => const CrmDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "websiteAnalyticsDashboard",
            builder: (context, state) =>
                const WebsiteAnalyticsDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "fileManagerDashboard",
            builder: (context, state) => const FileManagerDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "cryptoDashboard",
            builder: (context, state) => const CryptoDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "academyDashboard",
            builder: (context, state) => const AcademyDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "hospitalManagementDashboard",
            builder: (context, state) =>
                const HospitalManagementDashboardScreen(),
          ),
          GoRoute(
            path: "/",
            name: "financeDashboard",
            builder: (context, state) => const FinanceDashboardScreen(),
          ),

          // Apps
          GoRoute(
            path: "/",
            name: "kanbanBoardApp",
            builder: (context, state) => const KanbanBoardAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "notesApp",
            builder: (context, state) => const NotesAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "chatsApp",
            builder: (context, state) => const ChatsAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "socialMediaApp",
            builder: (context, state) => const SocialMediaAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "mailApp",
            builder: (context, state) => const MailAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "todoListApp",
            builder: (context, state) => const TodoListAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "tasksApp",
            builder: (context, state) => const TasksAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "calendarApp",
            builder: (context, state) => const CalendarAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "fileManagerApp",
            builder: (context, state) => const FileManagerAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "apiKeysApp",
            builder: (context, state) => const ApiKeysAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "posApp",
            builder: (context, state) => const PosAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "coursesApp",
            builder: (context, state) => const CoursesAppScreen(),
          ),

          // AI Apps
          GoRoute(
            path: "/",
            name: "aiChatAiApp",
            builder: (context, state) => const AiChatAiAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "imageGenerateAiApp",
            builder: (context, state) => const ImageGenerateAiAppScreen(),
          ),
          GoRoute(
            path: "/",
            name: "textToSpeechAiApp",
            builder: (context, state) => const TextToSpeechAiAppScreen(),
          ),

          // Pages
          GoRoute(
            path: "/",
            name: "usersListPage",
            builder: (context, state) => const UsersListPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "profilePage",
            builder: (context, state) => const ProfilePageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "onboardingFlowPage",
            builder: (context, state) => const OnboardingFlowPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "emptyStates01Page",
            builder: (context, state) => const EmptyStates01PageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "emptyStates02Page",
            builder: (context, state) => const EmptyStates02PageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "emptyStates03Page",
            builder: (context, state) => const EmptyStates03PageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "settingsProfilePage",
            builder: (context, state) => const SettingsProfilePageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "settingsAccountPage",
            builder: (context, state) => const SettingsAccountPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "settingsBillingPage",
            builder: (context, state) => const SettingsBillingPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "settingsAppearancePage",
            builder: (context, state) => const SettingsAppearancePageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "settingsNotificationsPage",
            builder: (context, state) =>
                const SettingsNotificationsPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "settingsDisplayPage",
            builder: (context, state) => const SettingsDisplayPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "pricingColumnPage",
            builder: (context, state) => const PricingColumnPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "pricingTablePage",
            builder: (context, state) => const PricingTablePageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "pricingSinglePage",
            builder: (context, state) => const PricingSinglePageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "authenticationLoginPage",
            builder: (context, state) => const AuthenticationLoginPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "authenticationRegisterPage",
            builder: (context, state) =>
                const AuthenticationRegisterPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "authenticationForgotPasswordPage",
            builder: (context, state) =>
                const AuthenticationForgotPasswordPageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "error404Page",
            builder: (context, state) => const Error404PageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "error500Page",
            builder: (context, state) => const Error500PageScreen(),
          ),
          GoRoute(
            path: "/",
            name: "error403Page",
            builder: (context, state) => const Error403PageScreen(),
          ),
        ],
      ),
    ],
  );
});
