import 'package:flutter/material.dart';
import 'package:flutter_public_repository/core/resources/theme_colors.dart';
import 'package:flutter_public_repository/home/domain/entities/post_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardPost extends StatelessWidget {
  final PostModel entity;
  final VoidCallback _onTap;

  const CardPost(this._onTap, {Key? key, required this.entity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
          onTap: () {
            _onTap();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(entity.title,
                    style: TextStyle(
                        color: ThemeColors.primaryColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10.h,
                ),
                //Text(entity.body, style: const TextStyle(fontSize: 13)),
              ],
            ),
          )),
    );
  }
}
