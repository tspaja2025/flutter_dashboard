import 'package:flutter_dashboard/providers/router_provider.dart';
import 'package:flutter_dashboard/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(const ProviderScope(child: FlutterDashboard()));
}

class FlutterDashboard extends ConsumerWidget {
  const FlutterDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final router = ref.watch(routerProvider);

    return ShadcnApp.router(
      debugShowCheckedModeBanner: false,
      title: "Flutter Dashboard",
      theme: ThemeData(colorScheme: ColorSchemes.lightNeutral),
      darkTheme: ThemeData.dark(colorScheme: ColorSchemes.darkNeutral),
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
