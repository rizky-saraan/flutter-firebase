import 'package:dots_indicator/dots_indicator.dart';
import 'package:firebase_chat/pages/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'widgets/item_page_view.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SizedBox(
            width: 360.w,
            height: 780.w,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  onPageChanged: (index) {
                    controller.changePage(index);
                  },
                  controller: PageController(
                    initialPage: 0,
                    keepPage: false,
                    viewportFraction: 1,
                  ),
                  pageSnapping: true,
                  physics: const ClampingScrollPhysics(),
                  children: const [
                    ItemPageView(
                      title: "What is Lorem Ipsum",
                      content:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                      path: "assets/images/banner1.png",
                    ),
                    ItemPageView(
                      title: "Why do we use it",
                      content:
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                      path: "assets/images/banner2.png",
                    ),
                    ItemPageView(
                      title: "Where does it come from",
                      content:
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source",
                      path: "assets/images/banner3.png",
                      isLast: true,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 70,
                  child: DotsIndicator(
                    position: controller.state.index.value.toDouble(),
                    dotsCount: 3,
                    reversed: false,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
