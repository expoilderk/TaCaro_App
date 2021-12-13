import 'package:flutter/material.dart';
import 'package:meuapp/modules/create/create_bottomsheet.dart';
import 'package:meuapp/shared/models/user_model.dart';

import 'package:meuapp/shared/theme/app_theme.dart';
import 'package:meuapp/shared/widgets/buttom_navigator/app_buttom_navigator.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  final List<Widget> pages;
  const HomePage({
    Key? key,
    required this.user,
    required this.pages,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  late final List<Widget> pages = widget.pages;

  void changeIndex(int index) async {
    if (index == 3) {
      await showModalBottomSheet(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32))),
          context: context,
          builder: (context) => CreateBottomsheet());
    } else {
      currentIndex = index;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              key: UniqueKey(),
              child: List.from(pages)[currentIndex],
            ),
            Positioned(
              bottom: 14,
              left: 26,
              right: 26,
              child: AppBottomNavigator(
                currentIndex: currentIndex,
                onChanged: changeIndex,
              ),
            )
          ],
        ),
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';
import 'package:meuapp/shared/theme/app_theme.dart';
import 'package:meuapp/shared/widgets/buttom_navigator/app_buttom_navigator.dart';
import 'package:meuapp/shared/widgets/card_chart/card_chart.dart';
import 'package:meuapp/shared/widgets/card_product/card_product.dart';
import 'package:meuapp/shared/widgets/list_tile/app_list_tile.dart';

class HomePage extends StatefulWidget {
  //final UserModel user;
  const HomePage({
    Key? key,
    /*required this.user*/
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  void changedIndex(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardChart(
                      value: 365.00,
                      percent: 1,
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Text("Preço dos produtos").label,
                    SizedBox(
                      height: 14,
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 126,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CardProduct(
                      like: index % 2 == 0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text("Suas últimas compras").label,
                      SizedBox(
                        height: 14,
                      ),
                      AppListTile(),
                      AppListTile(),
                      AppListTile(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 14,
            right: 26,
            left: 26,
            child: AppBottomNavigator(
              currentIndex: currentIndex,
              onChanged: changedIndex,
            ),
          )
        ],
      ),
    );
  }
}
*/