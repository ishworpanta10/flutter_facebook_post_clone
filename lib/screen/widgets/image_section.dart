import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageSection extends StatelessWidget {
  final String imageUrl;
  final double deviceWidth;
  final double deviceHeight;
  final String? userPostText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (userPostText != null)
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 8, bottom: 10),
            child: Text(
              userPostText ?? "",
              style: const TextStyle(
                letterSpacing: 0.3,
              ),
            ),
          )
        else
          const SizedBox.shrink(),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Stack(
                  children: [
                    PhotoView(
                      imageProvider: NetworkImage(imageUrl),
                    ),
                    Positioned(
                      top: 60,
                      left: 30,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          child: Image.network(
            imageUrl,
            width: deviceWidth,
            height: deviceHeight,
            fit: BoxFit.cover,
            errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
              return const Center(
                  child: Icon(
                Icons.error,
                color: Colors.red,
              ));
            },
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ],
    );
  }

  const ImageSection({
    Key? key,
    required this.imageUrl,
    required this.deviceWidth,
    required this.deviceHeight,
    this.userPostText,
  }) : super(key: key);
}
