import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .035,
        horizontal: MediaQuery.of(context).size.height * .018,
      ), //vertical: 30 , horizontal:15
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 16,
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Image.asset(AssetsData.icSearch, height: 24),
          )
        ],
      ),
    );
  }
}
