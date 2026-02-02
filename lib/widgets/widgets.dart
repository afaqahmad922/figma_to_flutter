import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 16,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star_half, color: Colors.amber, size: 12),
                    SizedBox(width: 4),
                    Text('344,567', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class SearchBarWidget extends StatelessWidget {
  final String hintText;

  const SearchBarWidget ({
    super.key, required this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 9,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.04), // #0000000A
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xffBBBBBB),
            fontFamily: 'Montserrat',
          ),
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.keyboard_voice_outlined),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}


class SortFilterButton extends StatelessWidget {
  final String text;
  final IconData? icon;   // made nullable

  const SortFilterButton({
    super.key,
    required this.text,
    this.icon,            // optional now
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 16,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      height: 40,
      width: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),

          // only show icon if provided
          if (icon != null) ...[
            SizedBox(width: 4),
            Icon(icon),
          ],
        ],
      ),
    );
  }
}


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


class SearchWidget extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;

  const SearchWidget({
    super.key,
    required this.hintText,
    this.suffixIcon,

  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 15.h, right: 24.w),
      child: Container(
        decoration: BoxDecoration(),
        child: TextField(
          decoration: InputDecoration( suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xffBBBBBB),
              fontFamily: 'Montserrat',
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffC8C8C8), width: 1),
            ),
          ),
        ),
      ),
    );
  }
}


class SizeOptionChip extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color FillColor;
  final Color borderColor;
  final double textSize;
  final IconData? prefixIcon;

  const SizeOptionChip({
    super.key,
    required this.text,
    required this.textSize,
    required this.FillColor,
    required this.borderColor,
    required this.textColor,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: FillColor,
        border: Border.all(width: 1.5, color: borderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...[
            Icon(prefixIcon, size: textSize + 4, color: textColor),
            SizedBox(width: 6.w),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}


class RText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final bool isLineThrough;

  const RText({
    super.key,
    required this.text,
    required this.textColor,
    required this.textSize,
    this.isLineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        fontSize: textSize,
        color: textColor,
        decoration: isLineThrough
            ? TextDecoration.lineThrough
            : TextDecoration.none,
      ),
    );
  }
}


class stackRectangle extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  stackRectangle ({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          padding: EdgeInsets.only(left: 48.w,top: 8.h, right: 8.w, bottom: 8.h),
          decoration: BoxDecoration(
            color: color, // blue
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
              topRight: Radius.circular(4.r),
              bottomRight: Radius.circular(4.r),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // 🔹 Circular floating icon
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: color, // darker blue
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20.sp,
          ),
        ),
      ],
    );
  }
}


class AppInputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  const AppInputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 317.w,
      child: TextField(
        style: TextStyle(
          fontSize: 14.sp.clamp(14, 18),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14.sp.clamp(14, 18)),
          prefixIcon: Icon(prefixIcon, size: 20.sp.clamp(16, 24)),
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, size: 20.sp.clamp(16, 24))
              : null,
          contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: Colors.black),
          ),
        ),
      ),
    );
  }
}


class Button extends StatelessWidget {
  final String text;

  const Button ({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55.w,
      width: 317.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: Color(0xffF83758),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
      ),
    );
  }
}


class Socials extends StatelessWidget {
  final String imagePath;
  const Socials ({
    super.key,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55.h,
      width: 55.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
        border: Border.all(color: Color(0xffF83758)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          imagePath,
          width: 14,
          height: 14,
        ),
      ),
    );
  }
}


class CustomCardTextField extends StatelessWidget {
  final String imagePath;
  final String suffixText;
  final Color borderColor;

  const CustomCardTextField({
    super.key,
    required this.imagePath,
    required this.suffixText,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 15.h, right: 24.w),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 20.h),
              child: Image.asset(
                imagePath,
                width: 60,
                height: 20,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 12.w, top: 14.h),
              child: Text(
                suffixText,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            filled: true,
            fillColor: Color(0xffF4F4F4),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor, width: 1),
            ),
          ),
        ),
      ),
    );
  }
}