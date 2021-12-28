import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SearchBox extends StatelessWidget {

  final ValueChanged<String> onChanged;
  const SearchBox({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: kSecondaryColor.withOpacity(0.32)
          )
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintText: 'Search here',
            hintStyle: const TextStyle(color: kSecondaryColor),
            border: InputBorder.none
        ),
      ),
    );
  }
}