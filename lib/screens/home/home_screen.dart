// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:newfiles/colors/colors.dart';

import 'home_widget/app_bar_widget.dart';
import 'home_widget/best_product.dart';
import 'home_widget/category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(),
              SizedBox(height: 15),
              CategoryList(),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: liteWhite,
                    ),
                    child: BestProduct(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
