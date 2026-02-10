import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => ProfilePageScreenState();
}

class ProfilePageScreenState extends State<ProfilePageScreen> {
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
              const Text("Profile Page").bold().large(),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.cog),
                child: const Text("Settings"),
              ),
            ],
          ),

          const SizedBox(height: 16),

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

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: .start,
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
                                  const Text("TSpaja").large().bold(),
                                  const SizedBox(height: 4),
                                  const Text("Project Manager").muted().small(),
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
                                      mainAxisAlignment: .center,
                                      children: [
                                        const Text("1").bold(),
                                        const Text("Post").muted().small(),
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
                                      mainAxisAlignment: .center,
                                      children: [
                                        const Text("2").bold(),
                                        const Text("Projects").muted().small(),
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
                                      mainAxisAlignment: .center,
                                      children: [
                                        const Text("3").bold(),
                                        const Text("Members").muted().small(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                const Icon(LucideIcons.mail, size: 16),
                                const Text("example@example.com"),
                              ],
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                const Icon(LucideIcons.phoneCall, size: 16),
                                const Text("+123 4567 890 123"),
                              ],
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                const Icon(LucideIcons.mapPin, size: 16),
                                const Text("Moon"),
                              ],
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                const Icon(LucideIcons.link, size: 16),
                                const Text("http://example.com"),
                              ],
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                const Icon(LucideIcons.link, size: 16),
                                const Text("http://example.com"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Complete Your Profile").semiBold(),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 16,
                              children: [
                                Expanded(
                                  child: Progress(
                                    progress: 66,
                                    min: 0,
                                    max: 100,
                                  ),
                                ),
                                const Text("66%"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Skills").semiBold(),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: const [
                                Chip(child: Text("Flutter")),
                                Chip(child: Text("HTML")),
                                Chip(child: Text("Svelte")),
                                Chip(child: Text("Vue")),
                                Chip(child: Text("Tailwind CSS")),
                                Chip(child: Text("CSS")),
                                Chip(child: Text("Node.js")),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  spacing: 16,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              children: [
                                const Text("Latest Activity").semiBold(),
                                const Spacer(),
                                OutlineButton(
                                  onPressed: () {},
                                  child: const Text("View All"),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

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
                      ),
                    ),
                    Row(
                      crossAxisAlignment: .start,
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Card(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("Transaction History").semiBold(),

                                const SizedBox(height: 16),

                                Table(
                                  columnWidths: {
                                    0: FixedTableSize(225),
                                    1: FixedTableSize(76),
                                    2: FixedTableSize(110),
                                  },
                                  defaultRowHeight: FixedTableSize(48),

                                  rows: [
                                    // Header row
                                    TableRow(
                                      cells: [
                                        _buildHeaderCell("Product"),
                                        _buildHeaderCell("Status"),
                                        _buildHeaderCell("Date"),
                                        _buildHeaderCell("Amount", true),
                                      ],
                                    ),

                                    // Body rows
                                    TableRow(
                                      cells: [
                                        _buildCell("Mock premium pack"),
                                        _buildCell("Pending"),
                                        _buildCell("10/02/2026"),
                                        _buildCell("\$316.00", true),
                                      ],
                                    ),

                                    TableRow(
                                      cells: [
                                        _buildCell(
                                          "Enterprise plan subscription",
                                        ),
                                        _buildCell("Paid"),
                                        _buildCell("10/02/2026"),
                                        _buildCell("\$316.00", true),
                                      ],
                                    ),

                                    TableRow(
                                      cells: [
                                        _buildCell(
                                          "Business board pro licence",
                                        ),
                                        _buildCell("Paid"),
                                        _buildCell("10/02/2026"),
                                        _buildCell("\$316.00", true),
                                      ],
                                    ),

                                    TableRow(
                                      cells: [
                                        _buildCell(
                                          "Custom integration package",
                                        ),
                                        _buildCell("Failed"),
                                        _buildCell("10/02/2026"),
                                        _buildCell("\$316.00", true),
                                      ],
                                    ),

                                    TableRow(
                                      cells: [
                                        _buildCell("Developer toolkit license"),
                                        _buildCell("Paid"),
                                        _buildCell("10/02/2026"),
                                        _buildCell("\$316.00", true),
                                      ],
                                    ),

                                    TableRow(
                                      cells: [
                                        _buildCell("Support package renewal"),
                                        _buildCell("Paid"),
                                        _buildCell("10/02/2026"),
                                        _buildCell("\$316.00", true),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Row(
                                  children: [
                                    const Text("Connections").semiBold(),
                                    const Spacer(),
                                    IconButton.outline(
                                      onPressed: () {},
                                      icon: const Icon(
                                        LucideIcons.chevronRight,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                Row(
                                  spacing: 8,
                                  children: [
                                    Avatar(
                                      size: 24,
                                      initials: Avatar.getInitials("ts paja"),
                                      provider: const NetworkImage(
                                        "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        const Text("Olivia Davis"),
                                        const Text(
                                          "olivia.davis@example.com",
                                        ).muted().small(),
                                      ],
                                    ),
                                    const Spacer(),
                                    PrimaryButton(
                                      onPressed: () {},
                                      child: const Text("Connect"),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                Row(
                                  spacing: 8,
                                  children: [
                                    Avatar(
                                      size: 24,
                                      initials: Avatar.getInitials("ts paja"),
                                      provider: const NetworkImage(
                                        "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        const Text("John Doe"),
                                        const Text(
                                          "john.doe@example.com",
                                        ).muted().small(),
                                      ],
                                    ),
                                    const Spacer(),
                                    OutlineButton(
                                      onPressed: () {},
                                      child: const Text("Disconnect"),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                Row(
                                  spacing: 8,
                                  children: [
                                    Avatar(
                                      size: 24,
                                      initials: Avatar.getInitials("ts paja"),
                                      provider: const NetworkImage(
                                        "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        const Text("Alice Smith"),
                                        const Text(
                                          "alice.smith@example.com",
                                        ).muted().small(),
                                      ],
                                    ),
                                    const Spacer(),
                                    PrimaryButton(
                                      onPressed: () {},
                                      child: const Text("Connect"),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                Row(
                                  spacing: 8,
                                  children: [
                                    Avatar(
                                      size: 24,
                                      initials: Avatar.getInitials("ts paja"),
                                      provider: const NetworkImage(
                                        "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        const Text("Emily Martinez"),
                                        const Text(
                                          "emily.martinez@example.com",
                                        ).muted().small(),
                                      ],
                                    ),
                                    const Spacer(),
                                    OutlineButton(
                                      onPressed: () {},
                                      child: const Text("Disconnect"),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                Row(
                                  spacing: 8,
                                  children: [
                                    Avatar(
                                      size: 24,
                                      initials: Avatar.getInitials("ts paja"),
                                      provider: const NetworkImage(
                                        "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        const Text("James Wilson"),
                                        const Text(
                                          "james.wilson@example.com",
                                        ).muted().small(),
                                      ],
                                    ),
                                    const Spacer(),
                                    OutlineButton(
                                      onPressed: () {},
                                      child: const Text("Disconnect"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TableCell _buildHeaderCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const .all(8),
        alignment: alignRight ? .centerRight : .centerLeft,
        child: Text(text).muted().semiBold(),
      ),
    );
  }

  TableCell _buildCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const .all(8),
        alignment: alignRight ? .centerRight : .centerLeft,
        child: Text(text),
      ),
    );
  }
}
