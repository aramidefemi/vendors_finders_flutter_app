import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart';
import 'package:vendors_finder/components/profile_card.dart';

Widget simpleHeader(String title) => SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 100.0,
      flexibleSpace: new Container(
        padding: EdgeInsets.only(top: 70.0, left: 20.0),
        child: new Text(
          title,
          style: textStyles['h1'],
        ),
      ),
    );
Widget searchHeader(String title, image,
        {TabController tabController, List tabs}) =>
    SliverAppBar(
      bottom: TabBar(
        indicatorColor: colorStyles['primary_dark'],
        controller: tabController,
        isScrollable: false,
        tabs: List<Tab>.generate(tabs.length, (int i) {
          return Tab(text: tabs[i]);
        }),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: new Text(
          title,
          style: textStyles['h1'],
        ),
      ),
      
      backgroundColor: Colors.transparent,
      expandedHeight: 150.0,
      flexibleSpace: new Container(
        padding: EdgeInsets.only(top: 90.0, left: 15.0, right: 20.0),
        child: TextField(
          decoration: new InputDecoration(
            // suffixIcon: Icon(
            //   Icons.search,
            //   size: 15.0,
            //   color: Colors.grey[500],
            // ),

            hintText: 'Search requests',
            hintStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.grey[500],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: const BorderRadius.all(
                const Radius.circular(5.0),
              ),
            ),
          ),
        ),
      ),
    );
Widget profileHeader(String title, image,
        {TabController tabController, List tabs}) =>
    SliverAppBar(
      bottom:  TabBar(
        indicatorColor: colorStyles['primary_dark'],
        controller: tabController,
        isScrollable: false,
        tabs: List<Tab>.generate(tabs.length, (int i) {
          return Tab(text: tabs[i]);
        }),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: new Text(
          title,
          style: textStyles['h1'],
        ),
      ),
      actions: <Widget>[
        // GestureDetector(
        //   onTap: () => print('help'),
        //   child: Container(
        //     padding: EdgeInsets.only(
        //       right: 30.0,
        //       top: 10.0
        //     ),
        //     height: 20,
        //     child: CircleAvatar(
        //     backgroundImage: NetworkImage(image),
          
        //   ),
        // ),
        // ),
      ],
      backgroundColor: Colors.transparent,
      expandedHeight: 350.0,
      flexibleSpace: new Container(
        padding: EdgeInsets.only(top: 90.0, left: 15.0, right: 20.0),
        child: new Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child:
            ProfileCard(profile: {
              "name": "Marco Polo",
              "email": "polo.marco@test.com",
              "number": "0801234567",
              "state": "lagos"
            },),
            ),
            TextField(
          decoration: new InputDecoration(
            // suffixIcon: Icon(
            //   Icons.search,
            //   size: 15.0,
            //   color: Colors.grey[500],
            // ),

            hintText: 'Search requests',
            hintStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.grey[500],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: const BorderRadius.all(
                const Radius.circular(5.0),
              ),
            ),
          ),
        ),
          ],
        ) 
      ),
    );
