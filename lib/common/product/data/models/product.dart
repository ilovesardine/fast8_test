import 'dart:convert';

class Product {
  Product({
    required this.id,
    required this.name,
    required this.basePrice,
    required this.price,
    this.imageUrl,
  });

  final int id;
  final String name;
  final int basePrice;
  final int price;
  final String? imageUrl;

  Product copyWith({
    int? id,
    String? name,
    int? basePrice,
    int? price,
    String? imageUrl,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      basePrice: basePrice ?? this.basePrice,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'base_price': basePrice,
      'price': price,
      'image_url': imageUrl,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      name: map['name'] as String,
      basePrice: map['base_price'] as int,
      price: map['price'] as int,
      imageUrl: map['image_url'] != null ? map['image_url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(id: $id, name: $name, basePrice: $basePrice, price: $price, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.basePrice == basePrice &&
        other.price == price &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        basePrice.hashCode ^
        price.hashCode ^
        imageUrl.hashCode;
  }
}
