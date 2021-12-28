import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ordering_food/components/search_box.dart';
import 'package:ordering_food/screens/components/item_list.dart';

import '../../constants.dart';
import 'category_item.dart';
import 'discount.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          const CategoryList(),
          ItemList(
            size: size,
          ),
          const Discount()
        ],
      ),
    );
  }
}


