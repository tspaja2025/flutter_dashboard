import "package:flutter_dashboard/navigation/navigation_builder.dart";
import "package:flutter_dashboard/widget/app_bar_widget.dart";
import "package:shadcn_flutter/shadcn_flutter.dart";

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
