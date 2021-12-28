import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Discount extends StatelessWidget {
  const Discount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Offers & Discounts',
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/beyond-meat-mcdonalds.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  gradient: LinearGradient(colors: [
                    const Color(0xFFFF961F).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.5)
                  ])),
              child: Row(
                children: [
                  Expanded(
                      child: SvgPicture.asset(
                          'assets/icons/macdonalds.svg')),
                  Expanded(
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                  text: "Get Discount of \n",
                                  style: TextStyle(fontSize: 15)
                              ),
                              TextSpan(
                                  text: "20% \n",
                                  style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                  text: "at MackDonald's on your first order & Instant cashback",
                                  style: TextStyle(fontSize: 15)
                              ),

                            ]
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}