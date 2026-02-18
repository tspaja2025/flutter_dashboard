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
import 'package:flutter_dashboard/navigation/navigation_config.dart';

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
