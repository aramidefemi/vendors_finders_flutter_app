import 'package:flutter/material.dart';
import 'package:vendors_finder/components/header.dart';
import 'package:vendors_finder/containers/reply_scrollable_list.dart';

String userAvatarUrl =
    "https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80";
List<Map> _profileSmall = [
  {
    'title': 'house repair',
    'date': '20 January, 2019',
    'count': '2 Vendors',
    'image': userAvatarUrl,
   }];
List<Map> _profile = [
  {
    'title': 'Human Hair',
    'date': '20 January, 2019',
    'count': '5 Vendors',
    'image': userAvatarUrl,
   },
  {
    'title': 'Bicycle',
    'date': '20 January, 2019',
    'count': '8 Vendors',
    'image': userAvatarUrl,
    },
  {
    'title': 'Rap album',
    'date': '20 January, 2019',
    'count': '9 Vendors',
    'image': userAvatarUrl,
   },
  {
    'title': 'lets stay',
    'date': '20 January, 2019',
    'count': '3 Vendors',
    'image': userAvatarUrl,
    },
];

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => new _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  _ProfileTabState({Key key});

  final int _listItemCount = 300;
  final int _tabCount = 2;
  TabController _tabController;

  List _tabs = ['Requests', 'History'];

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
          profileHeader('Profile', userAvatarUrl,
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

  Widget requestsTabArea() {
    return Column(
      children: <Widget>[
        replyScrollableList(items: _profileSmall, section: 'Today'),
        replyScrollableList(items: _profile, section: 'Yesterday'),
      ],
    );
  }
}
