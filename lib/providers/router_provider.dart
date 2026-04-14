import 'package:flutter_dashboard/screens/dashboards/classic_dashboard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: "classicDashboard",
        builder: (context, state) => const ClassicDashboardScreen(),
      ),
    ],
  );
});
