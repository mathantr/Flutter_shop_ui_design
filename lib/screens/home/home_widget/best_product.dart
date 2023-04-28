import 'package:flutter/material.dart';
import 'package:newfiles/models/product_models/product_models.dart';
import 'package:newfiles/screens/detail_screen/detail_screen.dart';

import '../../../colors/colors.dart';

class BestProduct extends StatelessWidget {
  BestProduct({
    super.key,
  });

  List<ProductModel> _productModel = [
    ProductModel(
        id: '101',
        imageUrl: 'https://pngimg.com/d/dress_shirt_PNG8083.png',
        title: 'Shirt',
        description: 'Essentials Men\’s Short-\nSleeve Crewneck T-Shirt',
        star: '4.9',
        review: '2543',
        price: 22.0,
        sold: '976'),
    ProductModel(
        id: '102',
        imageUrl:
            'https://www.pngarts.com/files/5/Plain-Red-T-Shirt-Free-PNG-Image.png',
        title: 'T-Shirt',
        description:
            'T-shirts are inexpensive to produce and are often part of fast fashion, leading to outsized sales of T-shirts compared to other attire.[1] For example, two billion T-shirts are sold per year in the United States',
        star: '4.3',
        review: '5345',
        price: 33.22,
        sold: '6756'),
    ProductModel(
        id: '103',
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2021/5/GV/EZ/MT/71945313/mens-pant-coat-500x500.jpg',
        title: 'Mens Coart',
        description:
            'A coat typically is an outer garment for the upper body as worn by either gender for warmth or fashion. Coats typically have long sleeves and are open down the front and closing by means of buttons, zippers, hook-and-loop fasteners, toggles, a belt, or a combination of some of these.',
        star: '4.3 ',
        review: '5345',
        price: 33.22,
        sold: '983'),
    ProductModel(
        id: '104',
        imageUrl:
            'https://m.media-amazon.com/images/I/51b2bkjh89L._AC_UL800_QL65_.jpg',
        title: 'Print T-Shirt',
        description:
            'The kurta is traditionally made of cotton or silk. It is worn plain or with embroidered decoration, such as chikan; and it can be loose or tight in the torso, typically falling either just above or somewhere below the knees of the wearer.',
        star: '4.7',
        review: '43534',
        price: 46.22,
        sold: '45445'),
    ProductModel(
        id: '105',
        imageUrl:
            'https://image.winudf.com/v2/image/Y29tLnBob3RvYXBwem9uZS5waG90b2ZyYW1lLm1lbi5rdXJ0YS5waG90by5mcmFtZXNfc2NyZWVuXzBfMTUxNDU2MTE3NV8wMDI/screen-0.webp?fakeurl=1&type=.webp',
        title: 'Mens Kudil',
        description:
            'The kurta is traditionally made of cotton or silk. It is worn plain or with embroidered decoration, such as chikan; and it can be loose or tight in the torso, typically falling either just above or somewhere below the knees of the wearer.',
        star: '4.7',
        review: '43534',
        price: 46.22,
        sold: '4342'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Sale Product',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 22),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'See more',
                  style: TextStyle(
                      color: priceColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: _productModel.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                              singleProduct: _productModel[index]),
                        ));
                  },
                  child: Container(
                    height: 300,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          _productModel[index].imageUrl,
                          height: 125,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _productModel[index].title,
                                style:
                                    fontStyle(16, buttonBlack, FontWeight.w400),
                              ),
                              Text(
                                _productModel[index].description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    fontStyle(12, buttonBlack, FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    '${_productModel[index].star} | ',
                                    style: fontStyle(
                                        12, buttonBlack, FontWeight.w400),
                                  ),
                                  Text(
                                    _productModel[index].review,
                                    style: fontStyle(
                                        12, buttonBlack, FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '\$${_productModel[index].price}',
                                    style: fontStyle(
                                        16, priceColor, FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
