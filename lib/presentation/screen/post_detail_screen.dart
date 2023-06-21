import 'package:flutter/material.dart';
import 'package:flutter_public_repository/core/resources/app_font_styles.dart';
import 'package:flutter_public_repository/domain/entities/post_model.dart';
import 'package:flutter_public_repository/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostDetailScreen extends StatelessWidget {
  final PostModel _post;

  const PostDetailScreen(this._post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Detail'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Text(
              _post.title,
              style: AppFontStyles.titleColorRegular18,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Text(_post.body, style: AppFontStyles.textColorRegular16),
          )
        ],
      ),
    );
  }
}
