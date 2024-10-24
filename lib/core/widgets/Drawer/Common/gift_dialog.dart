import 'package:flutter/material.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/gift_progress_indicator.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class GiftDialog extends StatelessWidget {
  const GiftDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
            color: kSecondaryColor,
            thickness: 3,
          ),
        Container(
                color: const Color(0xff505e76),
        padding: const EdgeInsets.all(24.0),
        
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const GiftProgressIndicator(),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    Assets.imagesGift,
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              Text(
          "A fresh new start...",
          style: AppStyles.style14Regular(context).copyWith(fontSize: 13),
        ),
            ],
          ),
        ),
        
        Divider(
            color: kSecondaryColor,
            thickness: 3,
          ),
      ],
    );
  }
}