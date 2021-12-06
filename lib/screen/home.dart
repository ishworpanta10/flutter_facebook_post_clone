import 'package:flutter/material.dart';
import 'package:share_bazar_media/constants/constants.dart';
import 'package:share_bazar_media/model/user_post.dart';
import 'package:share_bazar_media/screen/widgets/post_page.dart';
import 'package:share_bazar_media/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _deviceWidth = MediaQuery.of(context).size.width;
    final _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: customAppBar(),
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            thickness: 14,
            color: bgColor,
          ),
          itemCount: postDataList.length,
          itemBuilder: (context, index) {
            final UserPost userPost = postDataList[index];
            return PostPage(
              userPost: userPost,
              deviceWidth: _deviceWidth,
              deviceHeight: _deviceHeight,
            );
          },
        ),
      ),
    );
  }
}
