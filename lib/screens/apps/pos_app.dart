import 'package:shadcn_flutter/shadcn_flutter.dart';

class PosAppScreen extends StatelessWidget {
  const PosAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("POS App").bold.large,
                      const Spacer(),
                      OutlineButton(
                        onPressed: () {},
                        leading: const Icon(LucideIcons.plus),
                        child: const Text("Add Product"),
                      ),
                      OutlineButton(
                        onPressed: () {},
                        leading: const Icon(LucideIcons.filePen),
                        child: const Text("Tables"),
                      ),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          placeholder: const Text("Search menu"),
                        ),
                      ),
                    ],
                  ).gap(8),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      menuItemSelector("All", LucideIcons.box, selected: true),
                      menuItemSelector(
                        "Snack",
                        Icons.lunch_dining,
                        selected: false,
                      ),
                      menuItemSelector(
                        "Pizza",
                        LucideIcons.pizza,
                        selected: false,
                      ),
                      menuItemSelector(
                        "Hamburger",
                        LucideIcons.menu,
                        selected: false,
                      ),
                      menuItemSelector(
                        "Coffee",
                        LucideIcons.coffee,
                        selected: false,
                      ),
                      menuItemSelector(
                        "Drink",
                        Icons.local_drink,
                        selected: false,
                      ),
                      menuItemSelector(
                        "Pasta",
                        LucideIcons.chartPie,
                        selected: false,
                      ),
                      menuItemSelector(
                        "Sauces",
                        LucideIcons.box,
                        selected: false,
                      ),
                    ],
                  ).gap(16),

                  const SizedBox(height: 16),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                          primary: false,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                              ),
                          itemCount: 18,
                          itemBuilder: (context, index) {
                            return OutlinedContainer(
                              child: CardImage(
                                image: Image.network(
                                  "https://picsum.photos/200/150",
                                ),
                                title: Text("Pizza"),
                                subtitle: Text("\$6.00"),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 5,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Your Cart").semiBold,
                    const Center(
                      child: Column(
                        children: [
                          Icon(LucideIcons.cookie),
                          Text("Your cart is empty."),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }

  Widget menuItemSelector(
    String label,
    IconData icon, {
    bool selected = false,
  }) {
    return Expanded(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {},
          child: OutlinedContainer(
            backgroundColor: selected ? Colors.gray.shade200 : Colors.white,
            height: 100,
            child: Column(
              mainAxisAlignment: .center,
              children: [Icon(icon), const SizedBox(height: 8), Text(label)],
            ),
          ),
        ),
      ),
    );
  }
}
