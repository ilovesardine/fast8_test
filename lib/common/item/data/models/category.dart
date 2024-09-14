import 'dart:convert';
import 'dart:ui';

import 'package:tech_test/core/utils/color_utils.dart';

class Category {
  Category({
    this.id,
    this.name,
    this.color,
    this.image,
  });

  final int? id;
  final String? name;
  final String? color;
  final String? image;

  Category copyWith({
    int? id,
    String? name,
    String? color,
    String? image,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'color': color,
      'image': image,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      color: map['color'] != null ? map['color'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Category(id: $id, name: $name, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ color.hashCode ^ image.hashCode;
  }

  Color? get colorStyle =>
      color != null && color != '' ? ColorUtils.fromHex(color!) : null;
}
