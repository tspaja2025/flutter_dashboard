import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceProductDetailScreen extends StatefulWidget {
  const EcommerceProductDetailScreen({super.key});

  @override
  State<EcommerceProductDetailScreen> createState() =>
      EcommerceProductDetailScreenState();
}

class EcommerceProductDetailScreenState
    extends State<EcommerceProductDetailScreen> {
  int flag = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            spacing: 8,
            children: [
              const Text("Sports T-Shirt").bold().large(),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.pencilLine),
                child: const Text("Edit"),
              ),
              IconButton.destructive(
                onPressed: () {},
                icon: const Icon(LucideIcons.trash2),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              const Text("Seller: Shirts Calore"),
              const Text("Published: 26 Jan, 2026"),
              const Text("WH1000XM4"),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Column(
                  children: [
                    SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: Card(child: Column(children: [])),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Card(child: Column(children: [])),
                        ),
                        Expanded(
                          child: Card(child: Column(children: [])),
                        ),
                        Expanded(
                          child: Card(child: Column(children: [])),
                        ),
                        Expanded(
                          child: Card(child: Column(children: [])),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width - 577,
                child: Column(
                  children: [
                    Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Card(
                            padding: const .all(16),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                const Text("Price").muted(),
                                const Text("\$120.40").large().semiBold(),
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
                                const Text("No. of Orders").muted(),
                                const Text("250").large().semiBold(),
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
                                const Text("Available Stocks").muted(),
                                const Text("2,550").large().semiBold(),
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
                                const Text("Total Revenue").muted(),
                                const Text("\$45,938").large().semiBold(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Description").large().bold(),
                            const Text("This is a shirt").muted(),

                            const SizedBox(height: 16),

                            const Text("Size").bold(),
                            const SizedBox(height: 4),

                            Row(
                              mainAxisSize: .min,
                              spacing: 8,
                              children: [
                                Toggle(
                                  value: flag == 0,
                                  style: const ButtonStyle.outline(),
                                  onChanged: (v) {
                                    setState(() {
                                      flag = v ? 0 : -1;
                                    });
                                  },
                                  child: const Text("SM"),
                                ),
                                Toggle(
                                  value: flag == 1,
                                  style: const ButtonStyle.outline(),
                                  onChanged: (v) {
                                    setState(() {
                                      flag = v ? 1 : -1;
                                    });
                                  },
                                  child: const Text("MD"),
                                ),
                                Toggle(
                                  value: flag == 2,
                                  style: const ButtonStyle.outline(),
                                  onChanged: (v) {
                                    setState(() {
                                      flag = v ? 2 : -1;
                                    });
                                  },
                                  child: const Text("LG"),
                                ),
                                Toggle(
                                  value: flag == 3,
                                  style: const ButtonStyle.outline(),
                                  onChanged: (v) {
                                    setState(() {
                                      flag = v ? 3 : -1;
                                    });
                                  },
                                  child: const Text("XL"),
                                ),
                                Toggle(
                                  value: flag == 4,
                                  style: const ButtonStyle.outline(),
                                  onChanged: (v) {
                                    setState(() {
                                      flag = v ? 4 : -1;
                                    });
                                  },
                                  child: const Text("XXL"),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            Row(
                              spacing: 8,
                              children: [
                                PrimaryButton(
                                  onPressed: () {},
                                  leading: const Icon(LucideIcons.shoppingCart),
                                  child: const Text("Add to cart"),
                                ),
                                OutlineButton(
                                  onPressed: () {},
                                  leading: const Icon(LucideIcons.heart),
                                  child: const Text("Wishlist"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
}
