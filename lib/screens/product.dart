
class Product{
  final String name;
  final String category;
  final String price;

  Product({
    required this.name,
    required this.category,
    required this.price,
  });
}


final List<Product> productList = [
  Product(name: 'jac a 10', category: 'petrol', price:'150.340 EGP' ),
  Product(name: 'chevolet Aveo', category: 'petrol', price: '320.950 EGP'),
  Product(name: 'hyndai verna', category: 'petrol', price: '250.770 EGP'),
  Product(name: 'kia carns', category: 'petrol', price: '500.000 EGP' ),
  Product(name: 'nussain sunny', category: 'petrol', price: '600.000 EGP'),
  Product(name: 'CHERY New Energy Vehicle Little Ant 2023 ', category: 'electric', price: '1200.0000 EGP'),

];