import 'package:flutter/material.dart';

import '../../constants.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: 'Compo Meal',
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: 'Chicken',
            press: () {},
          ),
          CategoryItem(
            title: 'Beverages',
            press: () {},
          ),
          CategoryItem(
            title: 'Snacks & Sides',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  const CategoryItem({
    Key? key,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? const TextStyle(color: kTextColor, fontWeight: FontWeight.bold)
                  : const TextStyle(fontSize: 12),
            ),
            if (isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
              )
          ],
        ),
      ),
    );
  }
}