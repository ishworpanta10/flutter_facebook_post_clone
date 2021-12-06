import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size ?? 30,
      backgroundImage: NetworkImage(
        imageUrl,
      ),
    );
  }

  const CustomCircleAvatar({
    Key? key,
    required this.imageUrl,
    this.size,
  }) : super(key: key);
}
