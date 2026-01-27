import 'package:shadcn_flutter/shadcn_flutter.dart';

class PaymentTransactionsScreen extends StatefulWidget {
  const PaymentTransactionsScreen({super.key});

  @override
  State<PaymentTransactionsScreen> createState() =>
      PaymentTransactionsScreenState();
}

class PaymentTransactionsScreenState extends State<PaymentTransactionsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(children: [const Text("Transactions").bold().large()]),

          const SizedBox(height: 16),

          Tabs(
            index: index,
            children: const [
              TabItem(child: Text("Latest")),
              TabItem(child: Text("Upcoming")),
            ],
            onChanged: (int value) {
              setState(() {
                index = value;
              });
            },
          ),

          const SizedBox(height: 16),

          OutlinedContainer(
            child: Column(
              children: [
                Padding(
                  padding: const .all(16),
                  child: Row(
                    spacing: 16,
                    children: [
                      const Text("27 Jan, 2026"),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text("Withdrawal to Central Bank"),
                          const Text("Completed").muted().small(),
                        ],
                      ),
                      const Spacer(),
                      const Text("-1,275,79 USD"),
                      IconButton.outline(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.chevronRight),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const .all(16),
                  child: Row(
                    spacing: 16,
                    children: [
                      const Text("27 Jan, 2026"),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text("Withdrawal to Central Bank"),
                          const Text("Completed").muted().small(),
                        ],
                      ),
                      const Spacer(),
                      const Text("-1,275,79 USD"),
                      IconButton.outline(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.chevronRight),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const .all(16),
                  child: Row(
                    spacing: 16,
                    children: [
                      const Text("27 Jan, 2026"),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text("Withdrawal to Central Bank"),
                          const Text("Completed").muted().small(),
                        ],
                      ),
                      const Spacer(),
                      const Text("-1,275,79 USD"),
                      IconButton.outline(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.chevronRight),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const .all(16),
                  child: Row(
                    spacing: 16,
                    children: [
                      const Text("27 Jan, 2026"),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text("Withdrawal to Central Bank"),
                          const Text("Completed").muted().small(),
                        ],
                      ),
                      const Spacer(),
                      const Text("-1,275,79 USD"),
                      IconButton.outline(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.chevronRight),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
