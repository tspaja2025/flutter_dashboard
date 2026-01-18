import 'package:shadcn_flutter/shadcn_flutter.dart';

class SalesDashboardScreen extends StatelessWidget {
  const SalesDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Sales Dashboard").bold().large()]),

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
                    children: [const Text("Revenue Chart").semiBold()],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Column(
                  spacing: 16,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Balance").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$103,045").semiBold(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Expense").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$15,010").semiBold(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Column(
                  spacing: 16,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Income").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$78,000").semiBold(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        padding: const .all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Total Sales Tax").muted().small(),
                            const SizedBox(height: 4),
                            const Text("\$9,090").semiBold(),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                      const Text("Best Selling Product").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Top-Selling Products at a Glance",
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
                      const Text("Track Order Status").semiBold(),
                      const SizedBox(height: 4),
                      const Text(
                        "Analyze growth and changes in visitor patterns",
                      ).muted().small(),
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
