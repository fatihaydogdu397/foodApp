import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/search_widgets/searc_text_form_field.dart';
import 'package:food_app/core/widgets/search_widgets/search_category_item.dart';
import 'package:food_app/core/widgets/search_widgets/search_list_item.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
              SearchTextFormField(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                    SearchCategoryItem(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.filter_alt_sharp,
                          size: 30,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.filter_alt_sharp,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.filter_alt_sharp,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                  SearchListItem(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
