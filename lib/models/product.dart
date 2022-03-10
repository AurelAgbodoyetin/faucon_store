class Product {
  final String image;
  final String title;
  final String description;
  final int price;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_1.png",
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_2.png",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_3.png",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_4.png",
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_5.png",
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_6.png",
  ),
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing and "
    "typesetting industry. Lorem Ipsum has been the industry's standard "
    "dummy text ever since. When an unknown printer took a galley.";
