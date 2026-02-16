import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_dashboard/screens/default_screen.dart';

void main() {
  runApp(const FlutterDashboard());
}

class FlutterDashboard extends StatefulWidget {
  const FlutterDashboard({super.key});

  @override
  State<FlutterDashboard> createState() => FlutterDashboardState();
}

class FlutterDashboardState extends State<FlutterDashboard> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Dashboard",
      theme: ThemeData(colorScheme: ColorSchemes.lightNeutral),
      darkTheme: ThemeData.dark(colorScheme: ColorSchemes.darkNeutral),
      themeMode: _themeMode,
      home: DefaultScreen(onThemeToggle: _toggleTheme, themeMode: _themeMode),
    );
  }
}
