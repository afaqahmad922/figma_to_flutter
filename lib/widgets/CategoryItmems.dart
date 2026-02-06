import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontFamily: 'Montserrat', fontSize: 14),
        ),
      ],
    );
  }
}
