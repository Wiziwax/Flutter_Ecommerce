import 'dart:ui';

class Category {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  Category({
    required this.imagePath,
    required this.title,
    required this.onTap,
  });
}
