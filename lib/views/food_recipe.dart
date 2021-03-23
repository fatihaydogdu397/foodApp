import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/food_recipe_widgets/appbar_item_description.dart';

class FoodRecipe extends StatelessWidget {
  const FoodRecipe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 450.0,
                floating: false,
                pinned: false,
                actions: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container(
                      //     padding: EdgeInsets.all(12),
                      //     child: Icon(Icons.arrow_back_ios,
                      //         color: Colors.white, size: 35)),
                      Container(
                          padding: EdgeInsets.all(20),
                          child: Icon(Icons.bookmark_border,
                              color: Colors.white, size: 35)),
                    ],
                  ),
                ],
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    titlePadding: EdgeInsets.all(20),
                    collapseMode: CollapseMode.none,
                    title: AppbarItemDescription(),
                    background: Stack(
                      children: [
                        Image(
                          height: 400,
                          image: NetworkImage(
                            "https://thelatinahomemaker.com/wp-content/uploads/2017/02/fruit-salad-3.png",
                          ),
                          fit: BoxFit.fitHeight,
                        ),
                        Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0),
                          ],
                        ))))
                      ],
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.lightGreen,
                    indicatorColor: Colors.lightGreen,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Ingredients"),
                      Tab(text: "Direction"),
                      Tab(text: "Review"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Center(
            child: Text("Sample text"),
          ),
        ),
      ),
    ));
  }
}



class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
