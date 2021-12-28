import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
                text: 'Punk', style: TextStyle(color: kSecondaryColor)),
            TextSpan(text: 'Food', style: TextStyle(color: kPrimaryColor)),
          ]),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/notification.svg'),
      )
    ],
  );
}