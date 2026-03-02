import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceProductDetailScreen extends StatefulWidget {
  const EcommerceProductDetailScreen({super.key});

  @override
  State<EcommerceProductDetailScreen> createState() =>
      _EcommerceProductDetailScreenState();
}

class _EcommerceProductDetailScreenState
    extends State<EcommerceProductDetailScreen> {
  int flag = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("Sports T-Shirt").bold.large,
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
        ).gap(8),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Seller: Shirts Calore"),
            const Text("Published: 26 Jan, 2026"),
            const Text("WH1000XM4"),
          ],
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardWidget(title: "", subtitle: "", children: []),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CardWidget(
                          title: "",
                          subtitle: "",
                          children: [],
                        ),
                      ),
                      Expanded(
                        child: CardWidget(
                          title: "",
                          subtitle: "",
                          children: [],
                        ),
                      ),
                    ],
                  ).gap(16),
                ],
              ).gap(16),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CardWidget(title: "Price", subtitle: "\$120.40"),
                      ),
                      Expanded(
                        child: CardWidget(
                          title: "No. of Orders",
                          subtitle: "250",
                        ),
                      ),
                      Expanded(
                        child: CardWidget(
                          title: "Available Stocks",
                          subtitle: "2,550",
                        ),
                      ),
                      Expanded(
                        child: CardWidget(
                          title: "Total Revenue",
                          subtitle: "\$45,938",
                        ),
                      ),
                    ],
                  ).gap(16),

                  CardWidget(
                    title: "Description",
                    subtitle: "This is a shirt",
                    children: [
                      const Text("Size").bold,
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
                ],
              ).gap(16),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
