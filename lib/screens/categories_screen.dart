import 'package:flutter/material.dart';
import 'package:flutter_project/screens/product.dart';

class CategoriesListPage extends StatefulWidget {
  const CategoriesListPage({super.key});

  @override
  State<CategoriesListPage> createState() => _CategoriesListPageState();
}

class _CategoriesListPageState extends State<CategoriesListPage> {
  final List<String> categories = [
    'petrol',
    'electric'
  ];

  List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filterProducts = productList.where((product) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(product.category);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Categories' ,
       style: TextStyle(color: Colors.white),),
      centerTitle: true, backgroundColor: Colors.red, toolbarHeight: 40 ,),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: categories
                    .map((category) => FilterChip(
                        selected: selectedCategories.contains(category),
                        label: Text(category),
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              selectedCategories.add(category);
                            } else {
                              selectedCategories.remove(category);
                            }
                          });
                        }))
                    .toList(),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: filterProducts.length,
                  itemBuilder: (context, index) {
                    final product = filterProducts[index];
                    return Card(
                      elevation: 8.0,
                      margin: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(35)),
                        child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            title: Text(
                              product.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.category,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  product.price,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            )),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
