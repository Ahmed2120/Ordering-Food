import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../details_screen.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key, required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Item(
          size: size,
          title: "Burger & Beer",
          subTitle: "MackDonald's",
          svgImg: "assets/icons/burger_beer.svg",
        ),
        Item(
          size: size,
          title: "Chinese & Noodles",
          subTitle: "MackDonald's",
          svgImg: "assets/icons/chinese_noodles.svg",
        ),
        Item(
          size: size,
          title: "Burger & Beer",
          subTitle: "Wendys",
          svgImg: "assets/icons/burger_beer.svg",
        ),
        Item(
          size: size,
          title: "Burger & Beer",
          subTitle: "MackDonald's",
          svgImg: "assets/icons/burger_beer.svg",
        ),
      ]),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.svgImg,
    required this.size,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String svgImg;
  final Size size;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20,
                color: const Color(0xFFB0CCE1).withOpacity(0.13))
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            print('taped');
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Details()));
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.13),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    svgImg,
                    width: size.width * 0.10,
                  ),
                ),
                Text(title),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}