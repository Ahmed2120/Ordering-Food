import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ordering_food/constants.dart';

import 'components/app_bar.dart';
import 'components/body.dart';
import 'components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: const BottomNavBar(),
      body: const Body(),
    );
  }


}


