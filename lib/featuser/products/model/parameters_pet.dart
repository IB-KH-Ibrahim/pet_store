
import 'package:pet/featuser/products/model/category_modl.dart';
import 'package:pet/featuser/products/model/tag_model.dart';

class PetParameters {
  final String name;
  final List<String> photoUrls;
  final int id;
  final Category category;
  final List<Tag> tags;
  final String status;

  PetParameters({
    required this.name,
    required this.photoUrls,
    required this.id,
    required this.category,
    required this.tags,
    required this.status,
  });
  factory PetParameters.fromJson(Map<String, dynamic> json) {
    return PetParameters(
      name: json['name'],
      photoUrls: List<String>.from(json['photoUrls']),
      id: json['id'],
      category: Category.fromJson(json['category']),
      tags: (json['tags'] as List)
          .map((tag) => Tag.fromJson(tag))
          .toList(),
      status: json['status'],
    );
  }
}
