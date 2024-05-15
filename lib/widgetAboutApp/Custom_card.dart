// ignore_for_file: file_names

import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                //contentPadding: EdgeInsets.zero,
                title: Text(
                  'Name Card',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleSemiBold20(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Text(
                '0152 6812 4865 9845',
                style: AppStyles.styleSemiBold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '12/20 - 124',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
