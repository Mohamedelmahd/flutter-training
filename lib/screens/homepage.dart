import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    Map product = {"name": "nussain", "category": "petrol", "price": "600.000"};

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const Center(
                  child: Text(
                "Home Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              Column(
                children: [
                  Card(
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
                            product['name'],
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['category'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                product['price'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Card(
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
                            product['name'],
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['category'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                product['price'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Card(
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
                            product['name'],
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['category'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                product['price'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Card(
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
                            product['name'],
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['category'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                product['price'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
   );
  }
}