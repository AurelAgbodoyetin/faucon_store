class Product {
  final String image;
  final String title;
  final String description;
  final int price;
  final int id;
  final int count;
  final double rate;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.id,
    required this.count,
    required this.rate,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      image: map["image"],
      title: map["title"],
      description: map["description"],
      price: map["price"],
      id: map["id"],
      count: map["rating"]["count"],
      rate: map["rating"]["rate"],
    );
  }
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_1.png",
    rate: 4.1,
    count: 125,
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    rate: 4.1,
    count: 125,
    description: dummyText,
    image: "assets/images/bag_2.png",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    rate: 4.1,
    count: 125,
    description: dummyText,
    image: "assets/images/bag_3.png",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    rate: 4.1,
    count: 125,
    description: dummyText,
    image: "assets/images/bag_4.png",
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    rate: 4.1,
    count: 125,
    description: dummyText,
    image: "assets/images/bag_5.png",
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    rate: 4.1,
    count: 125,
    description: dummyText,
    image: "assets/images/bag_6.png",
  ),
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing and "
    "typesetting industry. Lorem Ipsum has been the industry's standard "
    "dummy text ever since. When an unknown printer took a galley.";
