import 'package:flutter/material.dart';
import 'package:food_app/views/collection.dart';
import 'package:food_app/views/home.dart';
import 'package:food_app/views/list.dart';
import 'package:food_app/views/search.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

BuildContext testContext;

class NavbarRoute extends StatefulWidget {
  final BuildContext menuScreenContext;
  NavbarRoute({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _NavbarRouteState createState() => _NavbarRouteState();
}

class _NavbarRouteState extends State<NavbarRoute> {
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      Home(),
      FoodList(),
      Collection(),
      Search(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(MdiIcons.home),
        title: "Home",
        activeColor: Colors.white,
        inactiveColor: Colors.grey[300],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.list),
        title: ("Food List"),
        activeColor: Colors.white,
        inactiveColor: Colors.grey[300],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.bookmark_border),
        title: ("Collection"),
        activeColor: Colors.white,
        inactiveColor: Colors.grey[300],
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("Search"),
        activeColor: Colors.white,
        inactiveColor: Colors.grey[300],
      ),
      // PersistentBottomNavBarItem(
      //   icon: Icon(Icons.star_border_outlined),
      //   title: ("Favoriler"),
      //   activeColor: Colors.grey[900],
      //   inactiveColor: Colors.grey,
      // ),
      // PersistentBottomNavBarItem(
      //   icon: Icon(Icons.search),
      //   title: ("Arama"),
      //   activeColor: Colors.grey[900],
      //   inactiveColor: Colors.grey,
      // ),
    ];
  }

  List<String> titles = ["Haber Kaynağı", "Gündem", "Ayarlar"];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      // drawer: CustomDrawer(),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("${titles[currentIndex]}"),
      //   actions: [
      //     if (currentIndex == 0)
      //       IconButton(
      //           icon: Icon(
      //             Icons.search,
      //             color: Colors.white,
      //           ),
      //           onPressed: null),
      //     if (currentIndex == 0)
      //       IconButton(
      //           icon: Icon(
      //             Icons.list,
      //             color: Colors.white,
      //           ),
      //           onPressed: null),
      //   ],
      // ),
      body: PersistentTabView(
        context,
        onItemSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.black.withOpacity(0.3),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: EdgeInsets.all(10.0),
        popActionScreens: PopActionScreensType.once,
        bottomScreenMargin: 0.0,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => Home(),
            '/second': (context) => FoodList(),
            '/third': (context) => Search(),
            '/fourth': (context) => Collection(),
            // '/fourth': (context) => Favoriler(),
            // '/fourth': (context) => Profile(),
          },
        ),
        onWillPop: () async {
          await showDialog(
            context: context,
            useSafeArea: true,
            builder: (context) => Container(
              height: 50.0,
              width: 50.0,
              color: Colors.blue,
              child: RaisedButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
          return false;
        },
        selectedTabScreenContext: (context) {
          testContext = context;
        },
        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.green,
            borderRadius: BorderRadius.circular(15.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 250),
        ),
        

        navBarStyle:
            NavBarStyle.style3, // Choose the nav bar style with this property
      ),
    );
  }
}
