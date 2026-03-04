import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class PricingTablePageScreen extends StatefulWidget {
  const PricingTablePageScreen({super.key});

  @override
  State<PricingTablePageScreen> createState() => PricingTablePageScreenState();
}

class PricingTablePageScreenState extends State<PricingTablePageScreen> {
  bool value = false;

  final pricingTable = [
    PricingTableRow(
      features: "Price",
      basic: "\$9.99/month",
      pro: "\$19.99/month",
      enterprice: "\$49.99/month",
    ),
    PricingTableRow(
      features: "Users",
      basic: "1 User",
      pro: "5 Users",
      enterprice: "Unlimited users",
    ),
    PricingTableRow(
      features: "Storage",
      basic: "5GB storage",
      pro: "50GB storage",
      enterprice: "500GB storage",
    ),
    PricingTableRow(
      features: "Support",
      basic: "Basic support",
      pro: "Priority support",
      enterprice: "24/7 premium support",
    ),
    PricingTableRow(
      features: "Integrations",
      basic: "Limited integrations",
      pro: "Advanced integrations",
      enterprice: "Custom integrations",
    ),
    PricingTableRow(
      features: "Analytics",
      basic: "false",
      pro: "true",
      enterprice: "true",
    ),
    PricingTableRow(
      features: "Api",
      basic: "false",
      pro: "false",
      enterprice: "true",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Table Pricing Page").bold.large]),

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

        SizedBox(
          width: double.infinity,
          child: Card(
            child: Column(
              children: [
                TableWidget(
                  columnWidths: {
                    0: FixedTableSize(105),
                    2: FixedTableSize(220),
                  },
                  hasCheckbox: false,
                  headerChildren: [
                    _buildHeaderCell("Features"),
                    _buildHeaderCell("Basic"),
                    _buildHeaderCell("Pro"),
                    _buildHeaderCell("Enterprise", true),
                  ],
                  bodyChildren: [
                    ...pricingTable.map((row) => _buildDataRow(context, row)),
                  ],
                ),
              ],
            ),
          ),
        ),

        const Text("Why Choose Our Platform").x2Large.bold,

        Row(
          children: [
            Expanded(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Comprehensive Library").bold,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Expert Instructors").bold,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Flexible Learning").bold,
                    const SizedBox(height: 8),
                    const Text("Study at your own pace, anytime and anywhere"),
                  ],
                ),
              ),
            ),
          ],
        ).gap(16),

        const Text("Frequently Asked Questions").x2Large.bold,

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
                child: Text("Is there a limit to how many courses I can take?"),
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

  TableRow _buildDataRow(BuildContext context, PricingTableRow row) {
    return TableRow(
      cells: [
        _buildCell(row.features),
        _buildCell(row.basic),
        _buildCell(row.pro),
        _buildCell(row.enterprice, true),
      ],
    );
  }
}

class PricingTableRow {
  final String features;
  final String basic;
  final String pro;
  final String enterprice;

  PricingTableRow({
    required this.features,
    required this.basic,
    required this.pro,
    required this.enterprice,
  });
}
