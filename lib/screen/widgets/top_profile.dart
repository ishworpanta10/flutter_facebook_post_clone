import 'package:flutter/material.dart';
import 'package:share_bazar_media/widgets/common_widgets.dart';

class TopProfile extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final String time;
  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.026,
        vertical: deviceHeight * 0.016,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                CustomCircleAvatar(
                  imageUrl: imageUrl,
                  size: 26,
                ),
                const SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          time,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(width: 6),
                        const Icon(Icons.circle, color: Colors.grey, size: 4),
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.public_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.more_horiz_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  const TopProfile({
    Key? key,
    required this.imageUrl,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.userName,
    required this.time,
  }) : super(key: key);
}
