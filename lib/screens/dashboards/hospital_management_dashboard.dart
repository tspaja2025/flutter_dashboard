import 'package:shadcn_flutter/shadcn_flutter.dart';

class HospitalManagementDashboardScreen extends StatefulWidget {
  const HospitalManagementDashboardScreen({super.key});

  @override
  State<HospitalManagementDashboardScreen> createState() =>
      HospitalManagementDashboardScreenState();
}

class HospitalManagementDashboardScreenState
    extends State<HospitalManagementDashboardScreen> {
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
              const Text("Hospital Management Dashboard").bold().large(),
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
                    children: [const Text("Total Appointments").semiBold()],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [const Text("New Patients").semiBold()],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [const Text("Operations").semiBold()],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [const Text("Total Revenue").semiBold()],
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
                      const Text("Patient Visits by Gender").semiBold(),
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
                    children: [const Text("Patients by Department").semiBold()],
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
                    children: [const Text("Upcoming Appointments").semiBold()],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Patients with Last Procedure").semiBold(),
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
                    children: [const SizedBox(height: 4)],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [const Text("Notes").semiBold()],
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
