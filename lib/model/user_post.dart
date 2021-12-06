import 'package:share_bazar_media/constants/constants.dart';

class UserPost {
  final String postUserProfile;
  final String postUserName;
  final String postTime;
  final String postImgUrl;
  final String? userPostTextCaption;

  final String? commentUser1ProfileImg;
  final String? commentUser1Name;
  final String? commentUser1CommentText;

  final String? commentUser2ProfileImg;
  final String? commentUser2Name;
  final String? commentUser2CommentText;

  final String? commentUser3ProfileImg;
  final String? commentUser3Name;
  final String? commentUser3CommentText;

  const UserPost({
    required this.postUserProfile,
    required this.postUserName,
    required this.postTime,
    required this.postImgUrl,
    this.commentUser1ProfileImg,
    this.commentUser1Name,
    this.commentUser1CommentText,
    this.commentUser2ProfileImg,
    this.commentUser2Name,
    this.commentUser2CommentText,
    this.commentUser3ProfileImg,
    this.commentUser3Name,
    this.commentUser3CommentText,
    this.userPostTextCaption,
  });
}

final List<UserPost> postDataList = [
  const UserPost(
    postUserProfile: 'https://i.pravatar.cc/150?img=19',
    postUserName: 'Awemulya  Acharya',
    postTime: '5 h',
    postImgUrl: stockImage3,
    userPostTextCaption: 'Today market summary in youtube',
    commentUser1ProfileImg: 'https://i.pravatar.cc/150?img=6',
    commentUser1Name: 'Ishwor Panta',
    commentUser1CommentText: 'great video sir 🎉🎉🎉',
    commentUser2ProfileImg: 'https://i.pravatar.cc/150?img=4',
    commentUser2Name: 'Big Bull',
    commentUser2CommentText: 'informational video sir 👍👍👍',
  ),
  const UserPost(
    postUserProfile: "https://i.pravatar.cc/150?img=10",
    postUserName: 'Hari Thapa',
    postTime: '22 h',
    postImgUrl: stockImage0,
    userPostTextCaption: 'Awesome ! Good sign after long time 🔥🔥🔥',
  ),
  const UserPost(
    postUserProfile: "https://i.pravatar.cc/300",
    postUserName: 'Dipendra Agrawal',
    postTime: '22 h',
    postImgUrl: stockImage1,
    userPostTextCaption: 'Market is Recovering Soon 🔥🔥🔥',
    commentUser1ProfileImg: 'https://i.pravatar.cc/150?img=3',
    commentUser1Name: 'Ishwor Panta',
    commentUser1CommentText: 'sure market will reach to 3000 🎉🎉🎉',
    commentUser2ProfileImg: 'https://i.pravatar.cc/150?img=4',
    commentUser2Name: 'Nepse Uncle',
    commentUser2CommentText: 'thank you for giving false hope sir',
  ),
  const UserPost(
    postUserProfile: 'https://i.pravatar.cc/150?img=9',
    postUserName: 'Ishwor Panta',
    postTime: '2 h',
    postImgUrl: stockImage2,
    commentUser1ProfileImg: 'https://i.pravatar.cc/150?img=8',
    commentUser1Name: 'Hari Panta',
    commentUser1CommentText: 'great going market 🎉🎉🎉',
    commentUser2ProfileImg: 'https://i.pravatar.cc/150?img=2',
    commentUser2Name: 'Sagar Dhimal',
    commentUser2CommentText: 'very annoying nepse chart 😢😢😢',
  ),
];
