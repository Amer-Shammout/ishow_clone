import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 200,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 15
          ),
          hintText: "Search",
          hintStyle: AppStyles.style15Regular(context),
          filled: true,
          fillColor: kSecondaryColor,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 30,
              height: 30,
              Assets.imagesSearch,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
