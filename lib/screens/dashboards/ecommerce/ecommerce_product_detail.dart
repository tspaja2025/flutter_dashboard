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

  final CarouselController controller = CarouselController();

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
        ).gap(16),

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
                      Row(
                        children: [
                          OutlineButton(
                            shape: ButtonShape.circle,
                            onPressed: () {
                              controller.animatePrevious(
                                const Duration(milliseconds: 500),
                              );
                            },
                            child: const Icon(LucideIcons.arrowLeft),
                          ),
                          const Gap(24),
                          Expanded(
                            child: SizedBox(
                              height: 200,
                              child: Carousel(
                                transition: const CarouselTransition.sliding(
                                  gap: 24,
                                ),
                                controller: controller,
                                sizeConstraint: const CarouselFixedConstraint(
                                  200,
                                ),
                                autoplaySpeed: const Duration(seconds: 2),
                                itemCount: 3,
                                duration: const Duration(seconds: 1),
                                itemBuilder: (context, index) {
                                  return NumberedContainer(index: index);
                                },
                              ),
                            ),
                          ),
                          const Gap(24),
                          OutlineButton(
                            shape: ButtonShape.circle,
                            onPressed: () {
                              controller.animateNext(
                                const Duration(milliseconds: 500),
                              );
                            },
                            child: const Icon(LucideIcons.arrowRight),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                    subtitle:
                        "Men striped pink sweatshirt. Crafted with cotton. Material composition is 100% organic cotton.",
                    trailing: [
                      OutlinedContainer(
                        borderColor: Theme.of(context).colorScheme.border,
                        width: 350,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Theme.of(context).colorScheme.border,
                                  ),
                                ),
                              ),
                              height: 32,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Category").semiBold,
                                  const Text("T-Shirt").muted,
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Theme.of(context).colorScheme.border,
                                  ),
                                ),
                              ),
                              height: 32,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Brand").semiBold,
                                  const Text("WearIt").muted,
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Theme.of(context).colorScheme.border,
                                  ),
                                ),
                              ),
                              height: 32,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Color").semiBold,
                                  const Text("Purple").muted,
                                ],
                              ),
                            ),
                            Container(
                              height: 32,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Weight").semiBold,
                                  const Text("1.2 Kg").muted,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    children: [
                      const Text("Key Features").bold,
                      const SizedBox(height: 4),
                      const Text(
                        "- Industry-leading noise cancellation",
                      ).muted.small,
                      const Text("- 30-hour battery life").muted.small,
                      const Text("- Touch sensor controls").muted.small,
                      const Text("- Speak-to-chat technology").muted.small,

                      const SizedBox(height: 16),

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

class NumberedContainer extends StatelessWidget {
  final int index;
  final double? width;
  final double? height;
  final bool fill;

  const NumberedContainer({
    super.key,
    required this.index,
    this.width,
    this.height,
    this.fill = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: fill
            ? Colors.primaries[(Colors.primaries.length - 1 - index) %
                  Colors.primaries.length]
            : null,
        borderRadius: theme.borderRadiusMd,
      ),
      child: Center(
        child: Text(
          index.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
