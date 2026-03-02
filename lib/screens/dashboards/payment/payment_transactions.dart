import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PaymentTransactionsScreen extends StatefulWidget {
  const PaymentTransactionsScreen({super.key});

  @override
  State<PaymentTransactionsScreen> createState() =>
      _PaymentTransactionsScreenState();
}

class _PaymentTransactionsScreenState extends State<PaymentTransactionsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Transactions").bold.large]),

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

// class PaymentTransactionsScreen extends StatefulWidget {
//   const PaymentTransactionsScreen({super.key});

//   @override
//   State<PaymentTransactionsScreen> createState() =>
//       PaymentTransactionsScreenState();
// }

// class PaymentTransactionsScreenState extends State<PaymentTransactionsScreen> {
//   int index = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const .all(16),
//       child: Column(
//         crossAxisAlignment: .start,
//         children: [
//           Row(children: [const Text("Transactions").bold().large()]),

//           const SizedBox(height: 16),

//           Tabs(
//             index: index,
//             children: const [
//               TabItem(child: Text("Latest")),
//               TabItem(child: Text("Upcoming")),
//             ],
//             onChanged: (int value) {
//               setState(() {
//                 index = value;
//               });
//             },
//           ),

//           const SizedBox(height: 16),

//           OutlinedContainer(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const .all(16),
//                   child: Row(
//                     spacing: 16,
//                     children: [
//                       const Text("27 Jan, 2026"),
//                       Column(
//                         crossAxisAlignment: .start,
//                         children: [
//                           const Text("Withdrawal to Central Bank"),
//                           const Text("Completed").muted().small(),
//                         ],
//                       ),
//                       const Spacer(),
//                       const Text("-1,275,79 USD"),
//                       IconButton.outline(
//                         onPressed: () {},
//                         icon: const Icon(LucideIcons.chevronRight),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Divider(),
//                 Padding(
//                   padding: const .all(16),
//                   child: Row(
//                     spacing: 16,
//                     children: [
//                       const Text("27 Jan, 2026"),
//                       Column(
//                         crossAxisAlignment: .start,
//                         children: [
//                           const Text("Withdrawal to Central Bank"),
//                           const Text("Completed").muted().small(),
//                         ],
//                       ),
//                       const Spacer(),
//                       const Text("-1,275,79 USD"),
//                       IconButton.outline(
//                         onPressed: () {},
//                         icon: const Icon(LucideIcons.chevronRight),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Divider(),
//                 Padding(
//                   padding: const .all(16),
//                   child: Row(
//                     spacing: 16,
//                     children: [
//                       const Text("27 Jan, 2026"),
//                       Column(
//                         crossAxisAlignment: .start,
//                         children: [
//                           const Text("Withdrawal to Central Bank"),
//                           const Text("Completed").muted().small(),
//                         ],
//                       ),
//                       const Spacer(),
//                       const Text("-1,275,79 USD"),
//                       IconButton.outline(
//                         onPressed: () {},
//                         icon: const Icon(LucideIcons.chevronRight),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Divider(),
//                 Padding(
//                   padding: const .all(16),
//                   child: Row(
//                     spacing: 16,
//                     children: [
//                       const Text("27 Jan, 2026"),
//                       Column(
//                         crossAxisAlignment: .start,
//                         children: [
//                           const Text("Withdrawal to Central Bank"),
//                           const Text("Completed").muted().small(),
//                         ],
//                       ),
//                       const Spacer(),
//                       const Text("-1,275,79 USD"),
//                       IconButton.outline(
//                         onPressed: () {},
//                         icon: const Icon(LucideIcons.chevronRight),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
