import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/dashboards/classic_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          isDense: true,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool _isExtended = true;
  bool _darkMode = false;

  final List<Widget> _screens = [const ClassicDashboard()];

  void _handleRailExtended() {
    setState(() {
      _isExtended = !_isExtended;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              extended: _isExtended,
              selectedIndex: _selectedIndex,
              groupAlignment: -1.0,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: .none,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.pie_chart_outline),
                  label: const Text("Classic Dashboard"),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 64,
                    padding: const .symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border(bottom: Divider.createBorderSide(context)),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: _handleRailExtended,
                          icon: const Icon(Icons.space_dashboard_outlined),
                        ),
                        const SizedBox(width: 16),
                        const VerticalDivider(thickness: 1, width: 1),
                        const SizedBox(width: 16),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: "Search...",
                            ),
                          ),
                        ),
                        const Spacer(),
                        Badge(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications_outlined),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: _darkMode
                              ? Icon(Icons.light_mode_outlined)
                              : Icon(Icons.dark_mode_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.palette_outlined),
                        ),
                        const SizedBox(width: 16),
                        const VerticalDivider(thickness: 1, width: 1),
                        const SizedBox(width: 16),
                        MenuAnchor(
                          menuChildren: [
                            MenuItemButton(
                              onPressed: () {},
                              leadingIcon: const Icon(Icons.star_outline),
                              child: const Text("Upgrade to Pro"),
                            ),
                            MenuItemButton(
                              onPressed: () {},
                              leadingIcon: const Icon(
                                Icons.check_circle_outlined,
                              ),
                              child: const Text("Account"),
                            ),
                            MenuItemButton(
                              onPressed: () {},
                              leadingIcon: const Icon(
                                Icons.credit_card_outlined,
                              ),
                              child: const Text("Billing"),
                            ),
                            MenuItemButton(
                              onPressed: () {},
                              leadingIcon: const Icon(
                                Icons.notifications_outlined,
                              ),
                              child: const Text("Notifications"),
                            ),
                            const Divider(),
                            MenuItemButton(
                              onPressed: () {},
                              leadingIcon: const Icon(Icons.logout),
                              child: const Text("Log out"),
                            ),
                          ],
                          builder: (context, controller, child) {
                            return MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  controller.isOpen
                                      ? controller.close()
                                      : controller.open();
                                },
                                child: CircleAvatar(child: const Text("A")),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // Main Content
                  Expanded(
                    child: IndexedStack(
                      index: _selectedIndex,
                      children: _screens,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
