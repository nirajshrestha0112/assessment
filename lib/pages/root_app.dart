import 'package:demo/pages/grid_view.dart';
import 'package:demo/pages/webview_example.dart';
import 'package:demo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:demo/pages/account_page.dart';
import 'package:demo/json/constant.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  // appbar
  // AppBar appbar = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(),
      body: _pages[activeTab],
    );
  }

  var _pages = [
    AccountPage(),
    WebViewPage(),
    GridViewPage(),
  ];

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: activeTab == index ? accent : black,
                  ),
                  onPressed: () {
                    activeTab = index;
                    setState(() {});
                  });
            })),
      ),
    );
  }
}
