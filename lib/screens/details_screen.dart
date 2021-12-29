import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/share.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/more.svg')),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/images/burger.png",
              height: size.height * 0.25,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: kSecondaryColor,
                        ),
                        Text('MacDonalds')
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chease Burger",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              RatingBar.builder(
                                initialRating: 3,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: kPrimaryColor,
                                ),
                                onRatingUpdate: (rating) {},
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          height: 55,
                          width: 55,
                          color: kPrimaryColor,
                          child: Text(
                            "\$15",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "Many food historians credit 16-year-old Lionel Sternberger, who in 1924 decided to slap a slice of American cheese (what else?) onto a cooking hamburger at his father's Pasadena, California",
                      style: TextStyle(height: 1.5),
                    ),
                    const SizedBox(height: 30,),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          width: size.width * 0.8,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/bag.svg", color: Colors.white,),
                              const SizedBox(width: 6,),
                              const Text('Buy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
