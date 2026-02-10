import 'package:shadcn_flutter/shadcn_flutter.dart';

class PricingTablePageScreen extends StatefulWidget {
  const PricingTablePageScreen({super.key});

  @override
  State<PricingTablePageScreen> createState() => PricingTablePageScreenState();
}

class PricingTablePageScreenState extends State<PricingTablePageScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const Text("Table Pricing Page").bold().large(),
          const SizedBox(height: 4),
          Switch(
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
            leading: const Text("Monthly"),
            trailing: const Text("Yearly"),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: Card(
              child: Column(
                children: [
                  Table(
                    columnWidths: {
                      0: FixedTableSize(105),
                      2: FixedTableSize(220),
                    },
                    defaultRowHeight: FixedTableSize(48),

                    rows: [
                      // Header row
                      TableRow(
                        cells: [
                          _buildHeaderCell("Features"),
                          _buildHeaderCell("Basic"),
                          _buildHeaderCell("Pro"),
                          _buildHeaderCell("Enterprise", true),
                        ],
                      ),

                      // Body rows
                      TableRow(
                        cells: [
                          _buildCell("Price"),
                          _buildCell("\$9.99/month"),
                          _buildCell("\$19.99/month"),
                          _buildCell("\$49.99/month", true),
                        ],
                      ),

                      TableRow(
                        cells: [
                          _buildCell("Users"),
                          _buildCell("1 User"),
                          _buildCell("5 Users"),
                          _buildCell("Unlimited users", true),
                        ],
                      ),

                      TableRow(
                        cells: [
                          _buildCell("Storage"),
                          _buildCell("5GB storage"),
                          _buildCell("50GB storage"),
                          _buildCell("500GB storage", true),
                        ],
                      ),

                      TableRow(
                        cells: [
                          _buildCell("Support"),
                          _buildCell("Basic support"),
                          _buildCell("Priority support"),
                          _buildCell("24/7 premium support", true),
                        ],
                      ),

                      TableRow(
                        cells: [
                          _buildCell("Integrations"),
                          _buildCell("Limited integrations"),
                          _buildCell("Advanced integrations"),
                          _buildCell("Custom integrations", true),
                        ],
                      ),

                      TableRow(
                        cells: [
                          _buildCell("Analytics"),
                          _buildCell("false"),
                          _buildCell("true"),
                          _buildCell("true", true),
                        ],
                      ),

                      TableRow(
                        cells: [
                          _buildCell("Api"),
                          _buildCell("false"),
                          _buildCell("false"),
                          _buildCell("true", true),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          const Text("Why Choose Our Platform").x2Large().bold(),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Comprehensive Library").bold(),
                      const SizedBox(height: 8),
                      const Text(
                        "Access thousand of courses across various disciplines",
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
                      const Text("Expert Instructors").bold(),
                      const SizedBox(height: 8),
                      const Text(
                        "Learn from industry professionals and thought leaders",
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
                      const Text("Flexible Learning").bold(),
                      const SizedBox(height: 8),
                      const Text(
                        "Study at your own pace, anytime and anywhere",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          const Text("Frequently Asked Questions").x2Large().bold(),

          const SizedBox(height: 16),

          const Accordion(
            items: [
              AccordionItem(
                trigger: AccordionTrigger(
                  child: Text("What payment methods do you accept?"),
                ),
                content: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales erat purus, quis molestie est volutpat at. Cras rhoncus suscipit purus eget rhoncus. ",
                ),
              ),
              AccordionItem(
                trigger: AccordionTrigger(
                  child: Text("Can I cancel my subscription at any time?"),
                ),
                content: Text(
                  " Aliquam commodo purus vel dolor rutrum, lacinia bibendum elit vulputate. Duis sed elit rutrum, efficitur lectus vehicula, ornare mi. Curabitur in lobortis velit. Praesent vestibulum,",
                ),
              ),
              AccordionItem(
                trigger: AccordionTrigger(
                  child: Text(
                    "Is there a limit to how many courses I can take?",
                  ),
                ),
                content: Text(
                  "urna et iaculis venenatis, neque felis facilisis felis, in tincidunt eros nisi sit amet quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                ),
              ),
              AccordionItem(
                trigger: AccordionTrigger(
                  child: Text("Do you offer a free trial?"),
                ),
                content: Text(
                  " Curabitur pellentesque posuere semper. Quisque iaculis, dolor ut fermentum bibendum, metus lorem eleifend libero, sed commodo lorem nunc sed purus.",
                ),
              ),
              AccordionItem(
                trigger: AccordionTrigger(
                  child: Text(
                    "Are the courses downloadable for offline viewing?",
                  ),
                ),
                content: Text(
                  "Pellentesque sapien orci, mollis ac urna sit amet, dignissim finibus elit. Aliquam elementum enim eros. Aliquam vestibulum nisl ut quam sodales, quis dictum lacus ultrices. Praesent id auctor metus, id semper neque. Praesent tincidunt eros in leo laoreet, sed facilisis justo tristique. Ut a nibh aliquam, tempor eros ut, tincidunt ex.",
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
