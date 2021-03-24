import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:food_app/core/widgets/food_recipe_widgets/appbar_item_description.dart';
import 'package:food_app/views/recipe_page/sub_pages/directions.dart';
import 'package:food_app/views/recipe_page/sub_pages/ingredients.dart';
import 'package:food_app/views/recipe_page/sub_pages/review.dart';

class FoodRecipe extends StatefulWidget {
  FoodRecipe({Key key}) : super(key: key);

  @override
  _FoodRecipeState createState() => _FoodRecipeState();
}

class _FoodRecipeState extends State<FoodRecipe> {
  PageController _pageController;
  var _pageViewListener = ValueNotifier<double>(0.0);
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      _pageViewListener.value = _pageController.page;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [buildSliverAppBar()];
        },
        body: PageView(
          controller: _pageController,
          pageSnapping: true,
          children: [Ingredients(), Directions(), Review()],
        ),
      ),
    );
  }

  Widget buildSliverAppBar() {
    return SliverAppBar(
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child:
                    Icon(Icons.bookmark_border, color: Colors.white, size: 35)),
          ],
        ),
      ],
      backgroundColor: Colors.white,
      floating: true,
      snap: false,
      pinned: true,
      centerTitle: false,
      expandedHeight: 450,
      collapsedHeight: 170,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: EdgeInsets.all(20),
          collapseMode: CollapseMode.pin,
          background: Stack(
            children: [
              Image(
                height: 370,
                width: double.infinity,
                image: NetworkImage(
                  "https://www.5boysbaker.com/wp-content/uploads/2015/01/fruit-salad-with-sweetened-condensed-milk.jpg",
                ),
                fit: BoxFit.fitWidth,
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0),
                ],
              ))))
            ],
          )),
      bottom: PreferredSize(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: AppbarItemDescription(),
              ),
              // SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildSubCategorySelectableItem(0, 'Ingredients'),
                    // SizedBox(width: 24),
                    buildSubCategorySelectableItem(1, 'Steps'),
                    // SizedBox(width: 24),
                    buildSubCategorySelectableItem(2, 'Reviews'),
                  ],
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(96),
      ),
    );
  }

  Widget buildSubCategorySelectableItem(int id, String title) {
    return ValueListenableBuilder<double>(
      valueListenable: _pageViewListener,
      builder: (context, value, child) {
        bool isActive = value.round() == id;
        return GestureDetector(
          onTap: () {
            _pageController.animateToPage(id,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: isActive ? Colors.lightGreen : Colors.transparent,
                ),
              ),
            ),
            padding: const EdgeInsets.only(bottom: 8, left: 4, right: 4),
            child: Text(
              '$title',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: isActive ? Colors.lightGreen : Colors.grey),
            ),
          ),
        );
      },
    );
  }
}


