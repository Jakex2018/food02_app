class Product {
  final String title, description, image;
  final int price, id;
  Product(
      {required this.title,
      required this.description,
      required this.id,
      required this.image,
      required this.price});
}

List<Product> products = [
  Product(
  id: 1,
  title: 'Chair', 
  description: 'lorem10dasdasmdkasmdkasmdkasmdkasmdkasmdadsadasdas', 
  image: 'assets/images/plato.png', 
  price: 400),
];
