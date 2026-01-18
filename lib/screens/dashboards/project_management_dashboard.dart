import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectManagementDashboardScreen extends StatefulWidget {
  const ProjectManagementDashboardScreen({super.key});

  @override
  State<ProjectManagementDashboardScreen> createState() =>
      ProjectManagementDashboardScreenState();
}

class ProjectManagementDashboardScreenState
    extends State<ProjectManagementDashboardScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              const Text("Project Management Dashboard").bold().large(),
            ],
          ),

          const SizedBox(height: 16),

          Tabs(
            index: index,
            children: const [
              TabItem(child: Text("Overview")),
              TabItem(child: Text("Reports")),
              TabItem(child: Text("ACtivites")),
            ],
            onChanged: (int value) {
              setState(() {
                index = value;
              });
            },
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
                      const Text("Total Revenue").semiBold(),
                      const SizedBox(height: 4),
                      const Text("+20.1% from last month").muted().small(),
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
                      const Text("Active Projects").semiBold(),
                      const SizedBox(height: 4),
                      const Text("+5.02% from last month").muted().small(),
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
                      const Text("New Leads").semiBold(),
                      const SizedBox(height: 4),
                      const Text("-3.58% from last month").muted().small(),
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
                      const Text("Time Spent").semiBold(),
                      const SizedBox(height: 4),
                      const Text("-3.58% from last month").muted().small(),
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
                      const Text("Projects Overview").semiBold(),
                      const SizedBox(height: 4),
                      const Text("Total for the last 3 months").muted().small(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Professionals").muted().small(),
                      const SizedBox(height: 4),
                      const Text("357").semiBold(),
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
                flex: 2,
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [const Text("Reminder").semiBold()],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Achievement by Year").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "You completed more projects per day on average this year than last year.",
                      ).muted().small(),
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
                      const Text("January - June 2026").muted().small(),
                      const SizedBox(height: 4),
                      const Text("Project Efficiency").semiBold(),
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
                    children: [const Text("Recent Projects").semiBold()],
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
