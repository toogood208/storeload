class Product {
    Product({
        required this.products,
    });

    final List<ProductElement> products;

    Product copyWith({
        List<ProductElement>? products,
    }) {
        return Product(
            products: products ?? this.products,
        );
    }

    factory Product.fromJson(Map<String, dynamic> json){ 
        return Product(
            products: json["products"] == null ? [] : List<ProductElement>.from(json["products"]!.map((x) => ProductElement.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "products": products.map((x) => x.toJson()).toList(),
    };

    @override
    String toString(){
        return "$products, ";
    }
}

class ProductElement {
    ProductElement({
        required this.category,
        required this.data,
    });

    final String? category;
    final List<Datum> data;

    ProductElement copyWith({
        String? category,
        List<Datum>? data,
    }) {
        return ProductElement(
            category: category ?? this.category,
            data: data ?? this.data,
        );
    }

    factory ProductElement.fromJson(Map<String, dynamic> json){ 
        return ProductElement(
            category: json["category"],
            data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "category": category,
        "data": data.map((x) => x.toJson()).toList(),
    };

    @override
    String toString(){
        return "$category, $data, ";
    }
}

class Datum {
    Datum({
        required this.image,
        required this.name,
        required this.price,
    });

    final String? image;
    final String? name;
    final String? price;

    Datum copyWith({
        String? image,
        String? name,
        String? price,
    }) {
        return Datum(
            image: image ?? this.image,
            name: name ?? this.name,
            price: price ?? this.price,
        );
    }

    factory Datum.fromJson(Map<String, dynamic> json){ 
        return Datum(
            image: json["image"],
            name: json["name"],
            price: json["price"],
        );
    }

    Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "price": price,
    };

    @override
    String toString(){
        return "$image, $name, $price, ";
    }
}
