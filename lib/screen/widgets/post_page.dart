import 'package:flutter/material.dart';
import 'package:share_bazar_media/model/user_post.dart';
import 'package:share_bazar_media/screen/widgets/widgets.dart';

class PostPage extends StatelessWidget {
  final UserPost userPost;
  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopProfile(
          imageUrl: userPost.postUserProfile,
          time: userPost.postTime,
          userName: userPost.postUserName,
          deviceWidth: deviceWidth,
          deviceHeight: deviceHeight,
        ),
        ImageSection(
          userPostText: userPost.userPostTextCaption,
          deviceWidth: deviceWidth,
          deviceHeight: deviceHeight * 0.34,
          imageUrl: userPost.postImgUrl,
        ),
        const BuildButtonRow(),
        const Divider(thickness: 1),
        userPost.commentUser1Name != null
            ? CommentSection(
                deviceWidth: deviceWidth,
                deviceHeight: deviceHeight,
                userName: userPost.commentUser1Name!,
                profileImg: userPost.commentUser1ProfileImg!,
                commentText: userPost.commentUser1CommentText!,
              )
            : const SizedBox.shrink(),
        userPost.commentUser2Name != null
            ? CommentSection(
                deviceWidth: deviceWidth,
                deviceHeight: deviceHeight,
                userName: userPost.commentUser2Name!,
                profileImg: userPost.commentUser2ProfileImg!,
                commentText: userPost.commentUser2CommentText!,
              )
            : const SizedBox.shrink(),
        userPost.commentUser3Name != null
            ? CommentSection(
                deviceWidth: deviceWidth,
                deviceHeight: deviceHeight,
                userName: userPost.commentUser3Name!,
                profileImg: userPost.commentUser3ProfileImg!,
                commentText: userPost.commentUser3CommentText!,
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  const PostPage({
    Key? key,
    required this.userPost,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);
}
