import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => ProfilePageScreenState();
}

class ProfilePageScreenState extends State<ProfilePageScreen> {
  int index = 0;

  final transactionHistory = [
    TransactionHistoryRow(
      product: "Mock premium pack",
      status: "Pending",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Enterprise plan subscription",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Business board pro licence",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Custom integration package",
      status: "Failed",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Developer toolkit license",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
    TransactionHistoryRow(
      product: "Support package renewal",
      status: "Paid",
      date: "10/02/2026",
      amount: "\$316.00",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("Profile Page").bold.large,
            const Spacer(),
            PrimaryButton(
              onPressed: () {},
              leading: const Icon(LucideIcons.cog),
              child: const Text("Settings"),
            ),
          ],
        ),

        Tabs(
          index: index,
          children: const [
            TabItem(child: Text("Overview")),
            TabItem(child: Text("Projects")),
            TabItem(child: Text("Activities")),
            TabItem(child: Text("Members")),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardWidget(
                    title: "",
                    subtitle: "",
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Avatar(
                              size: 64,
                              initials: Avatar.getInitials("ts paja"),
                              provider: const NetworkImage(
                                "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text("TSpaja").large.bold,
                            const SizedBox(height: 4),
                            const Text("Project Manager").muted.small,
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 75,
                              decoration: BoxDecoration(
                                color: Colors.gray.shade200,
                                border: Border.all(color: Colors.gray),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("1").bold,
                                  const Text("Post").muted.small,
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 75,
                              decoration: BoxDecoration(
                                color: Colors.gray.shade200,
                                border: Border(
                                  top: BorderSide(color: Colors.gray),
                                  bottom: BorderSide(color: Colors.gray),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("2").bold,
                                  const Text("Projects").muted.small,
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 75,
                              decoration: BoxDecoration(
                                color: Colors.gray.shade200,
                                border: Border.all(color: Colors.gray),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("3").bold,
                                  const Text("Members").muted.small,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Icon(LucideIcons.mail, size: 16),
                          const Text("example@example.com"),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Icon(LucideIcons.phoneCall, size: 16),
                          const Text("+123 4567 890 123"),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Icon(LucideIcons.mapPin, size: 16),
                          const Text("Moon"),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Icon(LucideIcons.link, size: 16),
                          const Text("http://example.com"),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          const Icon(LucideIcons.link, size: 16),
                          const Text("http://example.com"),
                        ],
                      ).gap(8),
                    ],
                  ),
                  CardWidget(
                    title: "Complete your profile",
                    subtitle: "",
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Progress(progress: 66, min: 0, max: 100),
                          ),
                          const Text("66%"),
                        ],
                      ).gap(16),
                    ],
                  ),
                  CardWidget(
                    title: "Skills",
                    subtitle: "",
                    children: [
                      Row(
                        children: const [
                          Chip(child: Text("Flutter")),
                          Chip(child: Text("HTML")),
                          Chip(child: Text("Svelte")),
                          Chip(child: Text("Vue")),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: const [
                          Chip(child: Text("Tailwind CSS")),
                          Chip(child: Text("CSS")),
                          Chip(child: Text("Node.js")),
                        ],
                      ).gap(8),
                    ],
                  ),
                ],
              ).gap(16),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardWidget(
                    title: "Latests Activity",
                    subtitle: "",
                    trailing: [
                      OutlineButton(
                        onPressed: () {},
                        child: const Text("View All"),
                      ),
                    ],
                    children: [
                      Timeline(
                        data: [
                          TimelineData(
                            time: const Text("10/02/2026"),
                            title: const Text("Flutter Dashboard"),
                            content: const Text("Flutter Dashboard"),
                          ),
                          TimelineData(
                            time: const Text("10/02/2026"),
                            title: const Text("Flutter Dashboard"),
                            content: const Text("Flutter Dashboard"),
                          ),
                          TimelineData(
                            time: const Text("10/02/2026"),
                            title: const Text("Flutter Dashboard"),
                            content: const Text("Flutter Dashboard"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CardWidget(
                    title: "Transaction history",
                    subtitle: "",
                    children: [
                      TableWidget(
                        columnWidths: {
                          0: FixedTableSize(225),
                          1: FixedTableSize(76),
                          2: FixedTableSize(110),
                        },
                        hasCheckbox: false,
                        headerChildren: [
                          _buildHeaderCell("Product"),
                          _buildHeaderCell("Status"),
                          _buildHeaderCell("Date"),
                          _buildHeaderCell("Amount", true),
                        ],
                        bodyChildren: [
                          ...transactionHistory.map(
                            (row) => _buildDataRow(context, row),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CardWidget(
                    title: "Connections",
                    subtitle: "",
                    trailing: [
                      IconButton.outline(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.chevronRight),
                      ),
                    ],
                    children: [
                      Row(
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Olivia Davis"),
                              const Text(
                                "olivia.davis@example.com",
                              ).muted.small,
                            ],
                          ),
                          const Spacer(),
                          PrimaryButton(
                            onPressed: () {},
                            child: const Text("Connect"),
                          ),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("John Doe"),
                              const Text("john.doe@example.com").muted.small,
                            ],
                          ),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            child: const Text("Disconnect"),
                          ),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Alice Smith"),
                              const Text("alice.smith@example.com").muted.small,
                            ],
                          ),
                          const Spacer(),
                          PrimaryButton(
                            onPressed: () {},
                            child: const Text("Connect"),
                          ),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Emily Martinez"),
                              const Text(
                                "emily.martinez@example.com",
                              ).muted.small,
                            ],
                          ),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            child: const Text("Disconnect"),
                          ),
                        ],
                      ).gap(8),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("James Wilson"),
                              const Text(
                                "james.wilson@example.com",
                              ).muted.small,
                            ],
                          ),
                          const Spacer(),
                          OutlineButton(
                            onPressed: () {},
                            child: const Text("Disconnect"),
                          ),
                        ],
                      ).gap(8),
                    ],
                  ),
                ],
              ).gap(16),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }

  TableCell _buildHeaderCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(text).muted.semiBold,
      ),
    );
  }

  TableCell _buildCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(text),
      ),
    );
  }

  TableRow _buildDataRow(BuildContext context, TransactionHistoryRow row) {
    return TableRow(
      cells: [
        _buildCell(row.product),
        _buildCell(row.status),
        _buildCell(row.date),
        _buildCell(row.amount, true),
      ],
    );
  }
}

class TransactionHistoryRow {
  final String product;
  final String status;
  final String date;
  final String amount;

  TransactionHistoryRow({
    required this.product,
    required this.status,
    required this.date,
    required this.amount,
  });
}
