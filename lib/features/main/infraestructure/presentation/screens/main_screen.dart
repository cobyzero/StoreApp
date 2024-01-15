import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:store_app/core/colors/palette.dart';
import 'package:store_app/core/const/const.dart';
import 'package:store_app/core/widgets/texts.dart';
import 'package:store_app/features/main/infraestructure/presentation/widgets/main_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kPrimaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "${assetImages}person.png",
            width: 80.w,
            height: 80.h,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 42,
              ),
              margin: EdgeInsets.all(5.w),
              width: double.infinity,
              height: 30.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts.semiBold(
                    text: "Look Good, Feel Good",
                    fontSize: 9.sp,
                  ),
                  Texts.grey(
                    text: "Create your individual & unique style and look amazing everyday.",
                    alignment: TextAlign.center,
                    fontSize: 5.sp,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MainButton(
                          onTap: () {},
                          color: Palette.greyButton,
                          text: "Men",
                          textColor: Palette.grey,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: MainButton(
                          onTap: () {},
                          color: Palette.blue,
                          text: "Woman",
                          textColor: Palette.white,
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      context.go("/getStarted");
                    },
                    child: Texts.grey(
                      text: "Skip",
                      fontSize: 6.sp,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
