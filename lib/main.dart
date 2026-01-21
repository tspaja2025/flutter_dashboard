import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_dashboard/screens/default_screen.dart';

void main() {
  runApp(const FlutterDashboard());
}

class FlutterDashboard extends StatelessWidget {
  const FlutterDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Dashboard",
      theme: ThemeData(colorScheme: ColorSchemes.lightDefaultColor),
      darkTheme: ThemeData(colorScheme: ColorSchemes.darkDefaultColor),
      themeMode: ThemeMode.dark,
      home: const DefaultScreen(),
    );
  }
}
