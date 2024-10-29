class Restaurant {
  final String name;
  final List<String> images;
  final String location;
  final double rating;
  final String description;

  Restaurant({
    required this.name,
    required this.images,
    required this.location,
    required this.rating,
    required this.description,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      name: json['name'],
      images: List<String>.from(json['images']),
      location: json['location'],
      rating: (json['rating'] is String) ? double.parse(json['rating']) : json['rating'],
      description: json['description'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'images': images,
      'location': location,
      'rating': rating,
      'description': description,
    };
  }
}