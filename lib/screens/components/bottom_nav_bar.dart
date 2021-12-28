import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [BoxShadow(
              offset: const Offset(0, -7),
              blurRadius: 33,
              color: const Color(0xFF6DAED9).withOpacity(0.11)
          )]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/home.svg')),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/Following.svg')),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/Glyph.svg')),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/person.svg')),
        ],
      ),
    );
  }
}