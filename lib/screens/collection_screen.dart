import 'package:flutter/material.dart';
import '../models/collection_model.dart';
import '../widgets/collection_card.dart';

class CollectionsScreen extends StatefulWidget {
  const CollectionsScreen({super.key});

  @override
  State<CollectionsScreen> createState() => _CollectionsScreenState();
}

class _CollectionsScreenState extends State<CollectionsScreen> {
  int expandedIndex = -1;

  final List<CollectionModel> collections = List.generate(
    7,
        (index) => CollectionModel(
      title: 'Collection ${index + 1}',
      images: List.generate(
        6,
            (i) => 'https://picsum.photos/300?random=${index * 10 + i}',
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: collections.length,
        itemBuilder: (context, index) {
          return CollectionCard(
            collection: collections[index],
            isExpanded: expandedIndex == index,
            onTap: () {
              setState(() {
                expandedIndex =
                expandedIndex == index ? -1 : index;
              });
            },
          );
        },
      ),
    );
  }
}
