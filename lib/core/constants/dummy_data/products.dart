List<Products> products = [
  const Products(
    category: "Recently added",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Milo",
    price: "4,500",
  ),
  const Products(
    category: "Recently added",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Gino Tomato",
    price: "1,500",
  ),
  const Products(
    category: "Recently added",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Peak Milk",
    price: "5,400",
  ),
  const Products(
    category: "Drinks",
    image: "assets/images/product_thumbnail/milo.png",
    name: "5alive pulpy",
    price: "5,500",
  ),
  const Products(
    category: "Drinks",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Maltina",
    price: "3,500",
  ),
  const Products(
    category: "Drinks",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Berry blast",
    price: "4,400",
  ),

  const Products(
    category: "Milk",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Peak Milk",
    price: "4,500",
  ),
  const Products(
    category: "Milk",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Dano Milk",
    price: "1,500",
  ),
  const Products(
    category: "Milk",
    image: "assets/images/product_thumbnail/milo.png",
    name: "Cowbell Milk",
    price: "5,400",
  ),
];

class Products {
  final String category;
  final String image;
  final String name;
  final String price;

  const Products({
    required this.category,
    required this.image,
    required this.name,
    required this.price,
  });
}