import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../colors/colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: liteWhite,
      ),
      child: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.search,
                                size: 25,
                                color: Colors.black.withOpacity(0.2),
                              )),
                          hintText: 'Search...',
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 0.4)),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.shoppingBag,
                          color: buttonBlack,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.message,
                          color: buttonBlack,
                        )),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '#Fashion day'.toUpperCase(),
                      style: fontStyle(16, buttonBlack, FontWeight.w400),
                    ),
                    Text(
                      ' 80% off'.toUpperCase(),
                      style: fontStyle(32, buttonBlack, FontWeight.w800),
                    ),
                    Text(
                      'Discover fashion that suits to \nyour style',
                      style: fontStyle(10, buttonBlack, FontWeight.w300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonBlack),
                      child: CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Text(
                            'Check this out',
                            style: fontStyle(16, liteWhite, FontWeight.w600),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
