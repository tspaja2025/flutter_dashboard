import 'package:shadcn_flutter/shadcn_flutter.dart';

class ImageGenerateAiAppScreen extends StatefulWidget {
  const ImageGenerateAiAppScreen({super.key});

  @override
  State<ImageGenerateAiAppScreen> createState() =>
      ImageGenerateAiAppScreenState();
}

class ImageGenerateAiAppScreenState extends State<ImageGenerateAiAppScreen> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Image Generator App").bold.large,
            const Spacer(),
            OutlineButton(
              onPressed: () {},
              leading: const Icon(LucideIcons.cloudDownload),
              child: const Text("Download all"),
            ),
            IconButton.outline(
              onPressed: () {},
              icon: const Icon(LucideIcons.history),
            ),
          ],
        ).gap(8),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormField(
                      key: FormKey(#prompt),
                      label: const Text("Prompt"),
                      child: TextField(
                        placeholder: const Text(
                          "Describe the image you want to generate...",
                        ),
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Be specific and descriptive for better results.",
                    ).small.muted,

                    const SizedBox(height: 16),

                    FormField(
                      key: FormKey(#negativePrompt),
                      label: const Text("Negative Prompt (Optional)"),
                      child: TextField(
                        placeholder: const Text(
                          "What you don't want in the image...",
                        ),
                        maxLines: 3,
                      ),
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
                          selectedValue = value;
                        });
                      },
                      value: selectedValue,
                      placeholder: const Text("Style"),
                      popup: const SelectPopup(
                        items: SelectItemList(
                          children: [
                            SelectItemButton(
                              value: "Realistic",
                              child: Text("Realistic"),
                            ),
                            SelectItemButton(
                              value: "Digital Art",
                              child: Text("Digital Art"),
                            ),
                            SelectItemButton(
                              value: "Fantasy",
                              child: Text("Fantasy"),
                            ),
                            SelectItemButton(
                              value: "Anime",
                              child: Text("Anime"),
                            ),
                            SelectItemButton(
                              value: "Photographic",
                              child: Text("Photographic"),
                            ),
                            SelectItemButton(
                              value: "Illustration",
                              child: Text("Illustration"),
                            ),
                            SelectItemButton(
                              value: "Abstract",
                              child: Text("Abstract"),
                            ),
                            SelectItemButton(
                              value: "Vintage",
                              child: Text("Vintage"),
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
                          selectedValue = value;
                        });
                      },
                      value: selectedValue,
                      placeholder: const Text("Aspect Ratio"),
                      popup: const SelectPopup(
                        items: SelectItemList(
                          children: [
                            SelectItemButton(
                              value: "Square",
                              child: Text("Square"),
                            ),
                            SelectItemButton(
                              value: "Landscape",
                              child: Text("Landscape"),
                            ),
                            SelectItemButton(
                              value: "Portrait",
                              child: Text("Portrait"),
                            ),
                            SelectItemButton(
                              value: "Classic",
                              child: Text("Classic"),
                            ),
                            SelectItemButton(
                              value: "Photo",
                              child: Text("Photo"),
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
                          selectedValue = value;
                        });
                      },
                      value: selectedValue,
                      placeholder: const Text("Quality"),
                      popup: const SelectPopup(
                        items: SelectItemList(
                          children: [
                            SelectItemButton(
                              value: "Standard",
                              child: Text("Standard"),
                            ),
                            SelectItemButton(
                              value: "High",
                              child: Text("High"),
                            ),
                            SelectItemButton(
                              value: "Ultra",
                              child: Text("Ultra"),
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
                          selectedValue = value;
                        });
                      },
                      value: selectedValue,
                      placeholder: const Text("Count"),
                      popup: const SelectPopup(
                        items: SelectItemList(
                          children: [
                            SelectItemButton(
                              value: "1 Image",
                              child: Text("1 Image"),
                            ),
                            SelectItemButton(
                              value: "2 Images",
                              child: Text("2 Images"),
                            ),
                            SelectItemButton(
                              value: "3 Images",
                              child: Text("3 Images"),
                            ),
                            SelectItemButton(
                              value: "4 Images",
                              child: Text("4 Images"),
                            ),
                          ],
                        ),
                      ).call,
                    ),

                    const SizedBox(height: 16),

                    FormField(
                      key: FormKey(#seed),
                      label: const Text("Seed (Optional)"),
                      child: TextField(
                        placeholder: const Text(
                          "Random seed for reproductibility",
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    SizedBox(
                      width: double.infinity,
                      child: PrimaryButton(
                        onPressed: () {},
                        alignment: Alignment.center,
                        child: const Text("Generate Image"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return OutlinedContainer(
                        child: CardImage(
                          image: Image.network("https://picsum.photos/600/400"),
                          title: Text("A majestic image generated"),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
