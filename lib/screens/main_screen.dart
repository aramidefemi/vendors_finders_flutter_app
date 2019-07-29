import 'package:flutter/material.dart';

import 'package:vendors_finder/presentation/platform_adaptive.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart';
import 'package:vendors_finder/screens/main_tabs/stats_tab.dart';
import 'package:vendors_finder/screens/main_tabs/profile_tab.dart';
import 'package:vendors_finder/screens/main_tabs/feeds_tab.dart';

// import 'package:vendors_finder/screens/main_drawer.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  State<MainScreen> createState() => new MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  PageController _tabController;
  String _title;
  int _index;

  @override
  void initState() {
    super.initState();
    _tabController = new PageController();

    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('/create-vendor-request'),
        tooltip: 'Create Vendor Request',
        child: Icon(Icons.queue),
        backgroundColor: colorStyles['primary_dark'],
        elevation: 10.0,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: tabItem(0, icon: Icons.home)),
            tabItem(1, icon: Icons.account_balance_wallet),
            tabItem(10),
            tabItem(3, icon: Icons.pie_chart_outlined),
            tabItem(4, icon: Icons.settings)
          ],
        ),
      ),
      body: new PageView(
        controller: _tabController,
        onPageChanged: onTabChanged,
        children: <Widget>[
          new FeedsTab(),
          new StatsTab(),
          new StatsTab(),
          new ProfileTab(),
        ],
      ),
    );
  }

  void onTap(int tab) {
    _tabController.jumpToPage(tab);
  }

  void onTabChanged(int tab) {
    setState(() {
      this._index = tab;
    });
  }

  Widget tabItem(int index, {icon}) {
    return IconButton(
      iconSize: 30.0,
      alignment: Alignment.center,
      color: colorStyles['grey'],
      padding: EdgeInsets.only(right: 28.0),
      icon: Icon(icon),
      onPressed: () {
        onTap(index);
      },
    );
  }
}
