// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newfiles/colors/colors.dart';

import 'package:newfiles/models/product_models/product_models.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({
    Key? key,
    required this.singleProduct,
  }) : super(key: key);

  final ProductModel singleProduct;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.singleProduct.title,
        ),
        actions: [
          Icon(
            Icons.favorite,
            color: liteRed,
            size: 32,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.share,
            color: Colors.black,
            size: 32,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            FontAwesomeIcons.shoppingBag,
            size: 32,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              height: 300,
              width: double.infinity,
              color: liteWhite,
              child: Image.network(widget.singleProduct.imageUrl),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.singleProduct.title,
                  style: fontStyle(
                      14, Colors.black.withOpacity(0.5), FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.singleProduct.description,
                  style: fontStyle(18, Colors.black, FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: FittedBox(
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    '${widget.singleProduct.star} Ratings ',
                    style: fontStyle(16, Colors.black, FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(CupertinoIcons.dot_square),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${widget.singleProduct.review} Ratings',
                    style: fontStyle(16, Colors.black, FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(CupertinoIcons.dot_square),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${widget.singleProduct.sold} Sold',
                    style: fontStyle(16, Colors.black, FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: priceColor,
              tabs: [
                Tab(
                  text: 'About Item',
                ),
                Tab(
                  text: 'Reviews',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: priceColor,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TabBarView(
                children: [
                  Row(
                    children: [
                      Text(
                        'Brand :',
                        style: fontStyle(16, Colors.black45, FontWeight.w400),
                      ),
                      Text(
                        ' ChArmkrp ',
                        style: fontStyle(16, Colors.black, FontWeight.w800),
                      ),
                      Spacer(),
                      Text(
                        'Color :',
                        style: fontStyle(16, Colors.black45, FontWeight.w400),
                      ),
                      Text(
                        ' Red ',
                        style: fontStyle(16, Colors.black, FontWeight.w800),
                      ),
                    ],
                  ),
                  Text('Person')
                ],
                controller: _tabController,
              ),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, boxShadow: [BoxShadow(blurRadius: 0.5)]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total',
                            style: fontStyle(16, buttonBlack, FontWeight.w500),
                          ),
                          Text(
                            '\$${widget.singleProduct.price.toString()}',
                            style: fontStyle(16, buttonBlack, FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 60,
                            color: priceColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  FontAwesomeIcons.shoppingBag,
                                  color: Colors.white,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 90,
                            color: buttonBlack,
                            child: Text(
                              'Buy Now',
                              style:
                                  fontStyle(16, Colors.white, FontWeight.w600),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
