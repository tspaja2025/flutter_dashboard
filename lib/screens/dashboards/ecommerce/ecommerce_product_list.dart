import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceProductListScreen extends StatefulWidget {
  const EcommerceProductListScreen({super.key});

  @override
  State<EcommerceProductListScreen> createState() =>
      _EcommerceProductListScreenState();
}

class _EcommerceProductListScreenState
    extends State<EcommerceProductListScreen> {
  String? statusValue;
  String? categoryValue;
  String? priceValue;

  final bestSellingProducts = [
    BestSellingProductsRow(
      product: "Sport Shoes",
      sold: "\$316.00",
      sales: "10",
    ),
    BestSellingProductsRow(
      product: "Black T-Shirt",
      sold: "\$316.00",
      sales: "20",
    ),
    BestSellingProductsRow(product: "Jeans", sold: "\$316.00", sales: "15"),
    BestSellingProductsRow(
      product: "Red Sneakers",
      sold: "\$316.00",
      sales: "40",
    ),
    BestSellingProductsRow(product: "Red Scarf", sold: "\$316.00", sales: "37"),
    BestSellingProductsRow(
      product: "Kitchen Accessory",
      sold: "\$316.00",
      sales: "18",
    ),
    BestSellingProductsRow(product: "Bicycle", sold: "\$316.00", sales: "25"),
    BestSellingProductsRow(
      product: "Sports Shoes",
      sold: "\$316.00",
      sales: "10",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("Product list").bold.large,
            const Spacer(),
            OutlineButton(
              onPressed: () {},
              leading: const Icon(LucideIcons.plus),
              child: const Text("Add Product"),
            ),
          ],
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(title: "Total Sales", subtitle: "\$30,230"),
            ),
            Expanded(
              child: CardWidget(title: "Number of Sales", subtitle: "982"),
            ),
            Expanded(
              child: CardWidget(title: "Affiliate", subtitle: "\$4,530"),
            ),
            Expanded(
              child: CardWidget(title: "Discounts", subtitle: "\$2,230"),
            ),
          ],
        ).gap(16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CardWidget(
                title: "",
                subtitle: "",
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: TextField(
                          placeholder: const Text("Search products..."),
                        ),
                      ),
                      Select<String>(
                        itemBuilder: (context, item) {
                          return Text(item);
                        },
                        popupConstraints: const BoxConstraints(
                          maxHeight: 300,
                          maxWidth: 200,
                        ),
                        onChanged: (value) {
                          setState(() {
                            statusValue = value;
                          });
                        },
                        value: statusValue,
                        placeholder: const Text("Status"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "active",
                                child: Text("Active"),
                              ),
                              SelectItemButton(
                                value: "Inactive",
                                child: Text("Inactive"),
                              ),
                              SelectItemButton(
                                value: "Out of Stock",
                                child: Text("Out of stock"),
                              ),
                              SelectItemButton(
                                value: "Closed for sales",
                                child: Text("Closed for sales"),
                              ),
                            ],
                          ),
                        ).call,
                      ),
                      Select<String>(
                        itemBuilder: (context, item) {
                          return Text(item);
                        },
                        popupConstraints: const BoxConstraints(
                          maxHeight: 300,
                          maxWidth: 200,
                        ),
                        onChanged: (value) {
                          setState(() {
                            categoryValue = value;
                          });
                        },
                        value: categoryValue,
                        placeholder: const Text("Category"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "Beauty",
                                child: Text("Beauty"),
                              ),
                              SelectItemButton(
                                value: "Technology",
                                child: Text("Technology"),
                              ),
                              SelectItemButton(
                                value: "Toys",
                                child: Text("Toys"),
                              ),
                              SelectItemButton(
                                value: "Food",
                                child: Text("Food"),
                              ),
                              SelectItemButton(
                                value: "Home Appliances",
                                child: Text("Home Appliances"),
                              ),
                            ],
                          ),
                        ).call,
                      ),
                      Select<String>(
                        itemBuilder: (context, item) {
                          return Text(item);
                        },
                        popupConstraints: const BoxConstraints(
                          maxHeight: 300,
                          maxWidth: 200,
                        ),
                        onChanged: (value) {
                          setState(() {
                            priceValue = value;
                          });
                        },
                        value: priceValue,
                        placeholder: const Text("Price"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "100 - 200",
                                child: Text("\$100 - \$200"),
                              ),
                              SelectItemButton(
                                value: "200 - 300",
                                child: Text("\$200 - \$300"),
                              ),
                              SelectItemButton(
                                value: "300 - 400",
                                child: Text("\$300 - \$400"),
                              ),
                              SelectItemButton(
                                value: "400 - 500",
                                child: Text("\$400 - \$500"),
                              ),
                            ],
                          ),
                        ).call,
                      ),
                    ],
                  ).gap(8),

                  const SizedBox(height: 16),

                  TableWidget(
                    columnWidths: {
                      0: FixedTableSize(170),
                      1: FixedTableSize(150),
                      2: FixedTableSize(140),
                    },
                    hasCheckbox: false,
                    headerChildren: [
                      _buildHeaderCell("Product"),
                      _buildHeaderCell("Sold"),
                      _buildHeaderCell("Sales"),
                      _buildHeaderCell("Action", true),
                    ],
                    bodyChildren: [
                      ...bestSellingProducts.map(
                        (row) => _buildBestSellingProdutsRow(context, row),
                      ),
                    ],
                  ),
                ],
              ),
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

  TableCell _actionCell(BuildContext context) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.centerRight,
        child: Builder(
          builder: (context) {
            return IconButton.ghost(
              onPressed: () {
                showDropdown(
                  context: context,
                  builder: (context) {
                    return const DropdownMenu(
                      children: [
                        MenuButton(child: Text("Copy order ID")),
                        MenuButton(child: Text("View customer")),
                        MenuButton(child: Text("View payment details")),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(LucideIcons.ellipsisVertical),
            );
          },
        ),
      ),
    );
  }

  TableRow _buildBestSellingProdutsRow(
    BuildContext context,
    BestSellingProductsRow row,
  ) {
    return TableRow(
      cells: [
        _buildCell(row.product),
        _buildCell(row.sold),
        _buildCell(row.sales),
        _actionCell(context),
      ],
    );
  }
}

class BestSellingProductsRow {
  final String product;
  final String sold;
  final String sales;

  BestSellingProductsRow({
    required this.product,
    required this.sold,
    required this.sales,
  });
}
