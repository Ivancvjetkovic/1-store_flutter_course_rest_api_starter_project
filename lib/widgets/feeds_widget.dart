import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_api_flutter_course/consts/global_colors.dart';
import 'package:store_api_flutter_course/screens/product_details_screen.dart';

class FeedsWidget extends StatelessWidget {
  const FeedsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                          text: '\$',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '168.00',
                              style: TextStyle(
                                color: lightTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  const Icon(IconlyBold.heart),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const ProductDetails())),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // child: FancyShimmerImage(
                //   errorWidget: Icon(
                //     IconlyBold.danger,
                //     color: Colors.red,
                //     size: 28,
                //   ),
                //   height: size.height * 0.2,
                //   width: double.infinity,
                //   imageUrl: 'https://www.shutterstock.com/image-vector/amazon-internet-media-icon-website-600w-2200304477.jpg',
                //   boxFit: BoxFit.fill,
                // ),
                child: SizedBox(
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/716jHHW1IPL._UL1500_.jpg',
                    height: size.height * 0.2,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    'AIR Force 1',
                    style: TextStyle(
                      color: lightTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
