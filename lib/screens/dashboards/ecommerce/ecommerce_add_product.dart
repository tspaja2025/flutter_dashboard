import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceAddProductScreen extends StatefulWidget {
  const EcommerceAddProductScreen({super.key});

  @override
  State<EcommerceAddProductScreen> createState() =>
      _EcommerceAddProductScreenState();
}

class _EcommerceAddProductScreenState extends State<EcommerceAddProductScreen> {
  CheckboxState _state = CheckboxState.unchecked;
  bool value = false;
  String? statusValue;
  String? categoryValue;
  String? subCategoryValue;
  String? statusVariantValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton.outline(
              onPressed: () {},
              icon: const Icon(LucideIcons.chevronLeft),
            ),
            const Text("Add product").bold.large,
            const Spacer(),
            PrimaryButton(
              enabled: false,
              onPressed: () {},
              child: const Text("Discard"),
            ),
            OutlineButton(onPressed: () {}, child: const Text("Save Draft")),
            PrimaryButton(
              enabled: false,
              onPressed: () {},
              child: const Text("Publish"),
            ),
          ],
        ).gap(8),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardWidget(
                    title: "Product Details",
                    subtitle: "",
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: FormField(
                          key: TextFieldKey(#name),
                          label: const Text("Name"),
                          child: const TextField(),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#sku),
                              label: const Text("SKU"),
                              child: const TextField(),
                            ),
                          ),
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#barcode),
                              label: const Text("Barcode"),
                              child: const TextField(),
                            ),
                          ),
                        ],
                      ).gap(16),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: FormField(
                          key: TextFieldKey(#description),
                          label: const Text("Description (optional)"),
                          child: const TextArea(),
                        ),
                      ),
                    ],
                  ),
                  CardWidget(
                    title: "Product Images",
                    subtitle: "",
                    trailing: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Add media from url"),
                      ),
                    ],
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.border,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Theme.of(context).colorScheme.border,
                                ),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: const Icon(LucideIcons.image),
                            ),

                            const SizedBox(height: 16),

                            const Text("Drop your images here"),
                            const Text("PNG or JPG (max. 5MB)").muted().small(),

                            const SizedBox(height: 16),

                            OutlineButton(
                              onPressed: () {},
                              leading: const Icon(LucideIcons.upload),
                              child: const Text("Select images"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CardWidget(
                    title: "Variants",
                    subtitle: "",
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#variantStatus),
                              label: const Text("Status"),
                              child: Select<String>(
                                constraints: BoxConstraints(
                                  maxWidth: 200,
                                  minWidth: 200,
                                ),
                                itemBuilder: (context, item) {
                                  return Text(item);
                                },
                                popupConstraints: const BoxConstraints(
                                  maxHeight: 300,
                                  maxWidth: 200,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    statusVariantValue = value;
                                  });
                                },
                                value: statusVariantValue,
                                placeholder: const Text("Select a status"),
                                popup: const SelectPopup(
                                  items: SelectItemList(
                                    children: [
                                      SelectItemButton(
                                        value: "Size",
                                        child: Text("Size"),
                                      ),
                                      SelectItemButton(
                                        value: "Color",
                                        child: Text("Color"),
                                      ),
                                      SelectItemButton(
                                        value: "Weight",
                                        child: Text("Weight"),
                                      ),
                                      SelectItemButton(
                                        value: "Smell",
                                        child: Text("Smell"),
                                      ),
                                    ],
                                  ),
                                ).call,
                              ),
                            ),
                          ),
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#value),
                              label: const Text("Value"),
                              child: const TextField(),
                            ),
                          ),
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#price),
                              label: const Text("Price"),
                              child: const TextField(),
                            ),
                          ),
                        ],
                      ).gap(16),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#variantStatusTwo),
                              label: const Text("Status"),
                              child: Select<String>(
                                constraints: BoxConstraints(
                                  maxWidth: 200,
                                  minWidth: 200,
                                ),
                                itemBuilder: (context, item) {
                                  return Text(item);
                                },
                                popupConstraints: const BoxConstraints(
                                  maxHeight: 300,
                                  maxWidth: 200,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    statusVariantValue = value;
                                  });
                                },
                                value: statusVariantValue,
                                placeholder: const Text("Select a status"),
                                popup: const SelectPopup(
                                  items: SelectItemList(
                                    children: [
                                      SelectItemButton(
                                        value: "Size",
                                        child: Text("Size"),
                                      ),
                                      SelectItemButton(
                                        value: "Color",
                                        child: Text("Color"),
                                      ),
                                      SelectItemButton(
                                        value: "Weight",
                                        child: Text("Weight"),
                                      ),
                                      SelectItemButton(
                                        value: "Smell",
                                        child: Text("Smell"),
                                      ),
                                    ],
                                  ),
                                ).call,
                              ),
                            ),
                          ),
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#valueTwo),
                              label: const Text("Value"),
                              child: const TextField(),
                            ),
                          ),
                          Expanded(
                            child: FormField(
                              key: TextFieldKey(#priceTwo),
                              label: const Text("Price"),
                              child: const TextField(),
                            ),
                          ),
                        ],
                      ).gap(16),

                      const SizedBox(height: 16),

                      PrimaryButton(
                        onPressed: () {},
                        leading: const Icon(LucideIcons.plus),
                        child: const Text("Add Variant"),
                      ),
                    ],
                  ),
                ],
              ).gap(16),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardWidget(
                    title: "Pricing",
                    subtitle: "",
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: FormField(
                          key: TextFieldKey(#basePrice),
                          label: const Text("Base Price"),
                          child: const TextField(),
                        ),
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: FormField(
                          key: TextFieldKey(#discountedPrice),
                          label: const Text("Discounted Price"),
                          child: const TextField(),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Checkbox(
                        state: _state,
                        onChanged: (value) {
                          setState(() {
                            _state = value;
                          });
                        },
                        trailing: const Text("Charge tax on this product"),
                      ),

                      const SizedBox(height: 8),
                      const Divider(),
                      const SizedBox(height: 8),

                      Switch(
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                          });
                        },
                        trailing: const Text("In stock"),
                      ),
                    ],
                  ),
                  CardWidget(
                    title: "Status",
                    subtitle: "",
                    children: [
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
                        placeholder: const Text("Select a status"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "Draft",
                                child: Text("Draft"),
                              ),
                              SelectItemButton(
                                value: "Active",
                                child: Text("Active"),
                              ),
                              SelectItemButton(
                                value: "Archived",
                                child: Text("Archived"),
                              ),
                            ],
                          ),
                        ).call,
                      ),
                    ],
                  ),
                  CardWidget(
                    title: "Categories",
                    subtitle: "",
                    children: [
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
                        placeholder: const Text("Select a status"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "Electronics",
                                child: Text("Electronics"),
                              ),
                              SelectItemButton(
                                value: "Clothing",
                                child: Text("Clothing"),
                              ),
                              SelectItemButton(
                                value: "Accessories",
                                child: Text("Accessories"),
                              ),
                            ],
                          ),
                        ).call,
                      ),

                      const SizedBox(height: 16),

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
                            subCategoryValue = value;
                          });
                        },
                        value: subCategoryValue,
                        placeholder: const Text("Select a status"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "Toys",
                                child: Text("Toys"),
                              ),
                            ],
                          ),
                        ).call,
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
