import 'package:shadcn_flutter/shadcn_flutter.dart';

class WebsiteAnalyticsDashboardScreen extends StatelessWidget {
  const WebsiteAnalyticsDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("Website Analytics Dashboard").bold().large(),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Daily active users").muted().small(),
                      const SizedBox(height: 4),
                      const Text("3,450").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Weekly sessions").muted().small(),
                      const SizedBox(height: 4),
                      const Text("1,342").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Duration").muted().small(),
                      const SizedBox(height: 4),
                      const Text("5.2min").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Conversion Rate").muted().small(),
                      const SizedBox(height: 4),
                      const Text("2.8%").semiBold(),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Earning Reports").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Last 28 days").muted().small(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [const SizedBox(height: 4)],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Website Analytics").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Total 28.5% Conversion Rate").muted().small(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Average Daily Sales").muted().small(),
                      const SizedBox(height: 4),
                      const Text("\$28,450").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Sales Overview").muted().small(),
                      const SizedBox(height: 4),
                      const Text("\$42.5K").semiBold(),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Sales by Countries").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Last 28 days").muted().small(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Total Earning").muted().small(),
                      const SizedBox(height: 4),
                      const Text("83%").semiBold(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Monthly Campaign State ").semiBold(),
                      const SizedBox(height: 4),
                      const Text("8.5 social visitors").muted().small(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
