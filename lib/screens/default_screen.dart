import 'package:flutter_dashboard/screens/ai_apps/ai_chat_ai_app.dart';
import 'package:flutter_dashboard/screens/ai_apps/image_generate_ai_app.dart';
import 'package:flutter_dashboard/screens/ai_apps/text_to_speech_ai_app.dart';
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
import 'package:flutter_dashboard/screens/dashboards/ecommerce_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/file_manager_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/finance_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/hospital_management_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/hotel_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/payment_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/project_management_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/sales_dashboard.dart';
import 'package:flutter_dashboard/screens/dashboards/website_analytics_dashboard.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => DefaultScreenState();
}

class DefaultScreenState extends State<DefaultScreen> {
  bool expanded = false;
  int selectedIndex = 0;

  final List<Widget> screens = [
    // Dashboards
    const ClassicDashboardScreen(),
    const EcommerceDashboardScreen(),
    const PaymentDashboardScreen(),
    const HotelDashboardScreen(),
    const ProjectManagementDashboardScreen(),
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
    const PosAppScreen(),
    const CoursesAppScreen(),
    // AI Apps
    const AiChatAiAppScreen(),
    const ImageGenerateAiAppScreen(),
    const TextToSpeechAiAppScreen(),
    // Pages
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: SafeArea(
        child: Row(
          crossAxisAlignment: .stretch,
          children: [
            NavigationRail(
              labelType: .expanded,
              labelPosition: .end,
              alignment: .start,
              expanded: expanded,
              index: selectedIndex,
              onSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              children: [
                NavigationButton(
                  alignment: .centerLeft,
                  label: const Text("Flutter Dashboard"),
                  child: const Icon(LucideIcons.layoutDashboard),
                ),
                const NavigationDivider(),
                _buildLabel("Dashboards"),
                _buildButton("Classic Dashboard", LucideIcons.chartPie),
                _buildButton("E-commerce", LucideIcons.shoppingBag),
                _buildButton("Payment Dashboard", LucideIcons.creditCard),
                _buildButton("Hotel Dashboard", LucideIcons.building),
                _buildButton("Project Management", LucideIcons.folderPlus),
                _buildButton("Sales", LucideIcons.circleDollarSign),
                _buildButton("CRM", LucideIcons.chartBarDecreasing),
                _buildButton("Website Analytics", LucideIcons.gauge),
                _buildButton("File Manager", LucideIcons.folder),
                _buildButton("Crypto", LucideIcons.wallet),
                _buildButton("Academy/School", LucideIcons.graduationCap),
                _buildButton("Hospital Management", LucideIcons.heartPulse),
                _buildButton("Finance Dashboard", LucideIcons.walletCards),

                _buildLabel("Apps"),
                _buildButton("Kanban", LucideIcons.kanban),
                _buildButton("Notes", LucideIcons.stickyNote),
                _buildButton("Chats", LucideIcons.messageSquare),
                _buildButton("Social Media", LucideIcons.messageCircleHeart),
                _buildButton("Mail", LucideIcons.mail),
                _buildButton("Todo List App", LucideIcons.squareCheck),
                _buildButton("Tasks", LucideIcons.clipboardCheck),
                _buildButton("Calendar", LucideIcons.calendar),
                _buildButton("File Manager", LucideIcons.folderArchive),
                _buildButton("Api Keys", LucideIcons.key),
                _buildButton("POS App", LucideIcons.cookie),
                _buildButton("Courses", LucideIcons.bookA),

                _buildLabel("AI Apps"),
                _buildButton("AI Chat", LucideIcons.brainCircuit),
                _buildButton("Image Generator", LucideIcons.images),
                _buildButton("Text To Speech", LucideIcons.speech),

                _buildLabel("Pages"),
              ],
            ),
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

  NavigationItem _buildButton(String label, IconData icon) {
    return NavigationItem(
      label: Text(label),
      alignment: .centerLeft,
      selectedStyle: const ButtonStyle.primaryIcon(),
      child: Icon(icon),
    );
  }

  NavigationLabel _buildLabel(String label) {
    return NavigationLabel(
      alignment: .centerLeft,
      child: Text(label).semiBold().muted(),
    );
  }
}
