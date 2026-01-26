import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceOrderListScreen extends StatefulWidget {
  const EcommerceOrderListScreen({super.key});

  @override
  State<EcommerceOrderListScreen> createState() =>
      EcommerceOrderListScreenState();
}

class EcommerceOrderListScreenState extends State<EcommerceOrderListScreen> {
  int index = 0;
  String? statusValue;
  String? categoryValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              const Text("Order list").bold().large(),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.plus),
                child: const Text("Create Order"),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Tabs(
            index: index,
            children: const [
              TabItem(child: Text("All")),
              TabItem(child: Text("Completed")),
              TabItem(child: Text("Processed")),
              TabItem(child: Text("Returned")),
              TabItem(child: Text("Canceled")),
            ],
            onChanged: (int value) {
              setState(() {
                index = value;
              });
            },
          ),

          const SizedBox(height: 16),

          Row(
            spacing: 8,
            children: [
              SizedBox(
                width: 200,
                child: TextField(placeholder: const Text("Search orders...")),
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
                        value: "Pending",
                        child: Text("Pending"),
                      ),
                      SelectItemButton(
                        value: "Completed",
                        child: Text("Completed"),
                      ),
                      SelectItemButton(
                        value: "Shipped",
                        child: Text("Shipped"),
                      ),
                      SelectItemButton(
                        value: "Delivered",
                        child: Text("Delivered"),
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
                      SelectItemButton(value: "Beauty", child: Text("Beauty")),
                      SelectItemButton(
                        value: "Technology",
                        child: Text("Technology"),
                      ),
                      SelectItemButton(value: "Food", child: Text("Food")),
                      SelectItemButton(
                        value: "Home Appliances",
                        child: Text("Home Appliances"),
                      ),
                    ],
                  ),
                ).call,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
