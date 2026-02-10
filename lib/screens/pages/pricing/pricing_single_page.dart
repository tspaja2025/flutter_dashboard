import 'package:shadcn_flutter/shadcn_flutter.dart';

class PricingSinglePageScreen extends StatelessWidget {
  const PricingSinglePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(children: [const Text("Single Pricing Page").bold().large()]),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: Card(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  const Text("Pro").semiBold(),
                  const Text(
                    "Advanced features for professionals",
                  ).muted().small(),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Text("\$19.99").x3Large().bold(),
                      const Text("/month"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Icon(LucideIcons.check, color: Colors.green),
                      const Text("5 User"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Icon(LucideIcons.check, color: Colors.green),
                      const Text("50GB storage"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Icon(LucideIcons.check, color: Colors.green),
                      const Text("Priority Support"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Icon(LucideIcons.check, color: Colors.green),
                      const Text("Advanced integrations"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    spacing: 8,
                    children: [
                      const Icon(LucideIcons.check, color: Colors.green),
                      const Text("Analytics"),
                    ],
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "All subscriptions come with a 30-day money-back guarantee. Cancel anytime.",
                  ).muted().small(),

                  const SizedBox(height: 16),

                  PrimaryButton(
                    onPressed: () {},
                    child: const Text("Start Plan"),
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
}
