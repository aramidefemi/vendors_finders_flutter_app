import 'package:flutter/material.dart';
import 'package:vendors_finder/components/header.dart';
import 'package:vendors_finder/containers/request_scrollable_list.dart';

String userAvatarUrl =
    "https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80";

List<Map> _profile = [
  {
    'count': true,
    'title': 'lets stay',
    'location': 'somewhere in life',
    'categories': 'house',
    'image': userAvatarUrl,
    'description':
        'so am on kep it pn stay in all for a 10k nights everything  is already part of a plan no easy option.'
  },
  {
    'title': 'lets stay',
    'location': 'somewhere in life',
    'categories': 'house',
    'image': userAvatarUrl,
    'description':
        'so am on kep it pn stay in all for a 10k nights everything  is already part of a plan no easy option.'
  },
  {
    'title': 'lets stay',
    'location': 'somewhere in life',
    'categories': 'house',
    'image': userAvatarUrl,
    'description':
        'so am on kep it pn stay in all for a 10k nights everything  is already part of a plan no easy option.'
  },
  {
    'title': 'lets stay',
    'location': 'somewhere in life',
    'categories': 'house',
    'image': userAvatarUrl,
    'description':
        'so am on kep it pn stay in all for a 10k nights everything  is already part of a plan no easy option.'
  },
];

class FeedsTab extends StatefulWidget {
  @override
  _FeedsTabState createState() => new _FeedsTabState();
}

class _FeedsTabState extends State<FeedsTab>
    with SingleTickerProviderStateMixin {
  _FeedsTabState({Key key});

  final int _listItemCount = 300;
  final int _tabCount = 2;
  TabController _tabController;

  List _tabs = ['Requests', 'Vendors'];

  @override
  void initState() {
    _tabController = TabController(length: _tabCount, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          searchHeader('Feeds', userAvatarUrl,
              tabController: _tabController, tabs: _tabs),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10000,
              child: TabBarView(
                controller: _tabController,
                children: List<Widget>.generate(_tabs.length, (int i) {
                  return requestsTabArea(); //tabAreas[_tabs[i]];
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Map tabAreas = {
  //   'Requests': _FeedsTabState().requestsTabArea(),'Vendors': _FeedsTabState().requestsTabArea()
  // };
  Widget requestsTabArea() {
    return Column(
      children: <Widget>[
        requestScrollableList(items: _profile, section: 'Lastest'),
        requestScrollableList(items: _profile, section: 'Recommended'),
      ],
    );
  }
}
