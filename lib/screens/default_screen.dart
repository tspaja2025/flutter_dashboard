import "package:flutter_dashboard/navigation/navigation_builder.dart";
import "package:flutter_dashboard/navigation/navigation_config.dart";
import "package:flutter_dashboard/navigation/screen_builder.dart";
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBarWidget(
                        onThemeToggle: widget.onThemeToggle,
                        themeMode: widget.themeMode,
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
