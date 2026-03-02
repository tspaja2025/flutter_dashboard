import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PaymentDashboardScreen extends StatelessWidget {
  const PaymentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Payment Dashboard").bold().large()]),

        Row(
          crossAxisAlignment: .start,
          children: [
            Expanded(
              child: CardWidget(
                title: "1,240.30 USD",
                subtitle: "",
                trailing: [
                  IconButton.ghost(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.chevronRight),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "500.00 EUR",
                subtitle: "",
                trailing: [
                  IconButton.ghost(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.chevronRight),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "0.00 GBP",
                subtitle: "",
                trailing: [
                  IconButton.ghost(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.chevronRight),
                  ),
                ],
              ),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "Transactions",
                subtitle: "Updated every several minutes",
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Text("02/03/2026"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Withdrawal to JP Morgan Chase"),
                            const Text("Completed").muted.small,
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-1,275.79 USD",
                          style: TextStyle(color: Colors.red),
                        ),
                        IconButton.outline(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.chevronRight),
                        ),
                      ],
                    ).gap(16),
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Text("02/03/2026"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Withdrawal to Citybank"),
                            const Text("Completed").muted.small,
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-202.99 USD",
                          style: TextStyle(color: Colors.red),
                        ),
                        IconButton.outline(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.chevronRight),
                        ),
                      ],
                    ).gap(16),
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Text("02/03/2026"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Withdrawal to Bank of America"),
                            const Text("Completed").muted.small,
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-1,272.30 USD",
                          style: TextStyle(color: Colors.red),
                        ),
                        IconButton.outline(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.chevronRight),
                        ),
                      ],
                    ).gap(16),
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Text("02/03/2026"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Payment from Paddle"),
                            const Text("Completed").muted.small,
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "+1,5,651.56 USD",
                          style: TextStyle(color: Colors.green),
                        ),
                        IconButton.outline(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.chevronRight),
                        ),
                      ],
                    ).gap(16),
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Text("02/03/2026"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Withdrawal to HSBC"),
                            const Text("Completed").muted.small,
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-1,679.35 USD",
                          style: TextStyle(color: Colors.red),
                        ),
                        IconButton.outline(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.chevronRight),
                        ),
                      ],
                    ).gap(16),
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Text("02/03/2026"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Withdrawal to JP Morgan Chase"),
                            const Text("Completed").muted.small,
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-3,420.00 USD",
                          style: TextStyle(color: Colors.red),
                        ),
                        IconButton.outline(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.chevronRight),
                        ),
                      ],
                    ).gap(16),
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Text("02/03/2026"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Payment from Stripe"),
                            const Text("Completed").muted.small,
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "+2,345.75 USD",
                          style: TextStyle(color: Colors.green),
                        ),
                        IconButton.outline(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.chevronRight),
                        ),
                      ],
                    ).gap(16),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
