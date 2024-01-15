import 'package:flutter/material.dart';
import 'package:store_app/core/colors/palette.dart';
import 'package:store_app/core/widgets/back_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomBackButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
