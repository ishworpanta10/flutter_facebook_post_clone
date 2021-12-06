import 'package:flutter/material.dart';

class BuildButtonRow extends StatelessWidget {
  const BuildButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                flex: 2,
                child: Text(
                  '👍😄😢 Raj Stha and 1.2k others',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Flexible(
                child: Text(
                  '296 comments',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.circle, color: Colors.grey, size: 4),
              Flexible(
                child: Text(
                  '23 shares',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconButton(
                iconData: Icons.thumb_up_outlined,
                label: 'Like',
              ),
              SizedBox(width: 10),
              IconButton(
                iconData: Icons.chat_bubble_outline_outlined,
                label: 'Comment',
              ),
              SizedBox(width: 10),
              IconButton(
                iconData: Icons.share_outlined,
                label: 'Share',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconButton extends StatefulWidget {
  final IconData iconData;
  final String label;
  final VoidCallback? onTap;

  @override
  State<IconButton> createState() => _IconButtonState();

  const IconButton({
    Key? key,
    required this.iconData,
    required this.label,
    this.onTap,
  }) : super(key: key);
}

class _IconButtonState extends State<IconButton> {
  Color likeColor = Colors.grey;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap ??
          () {
            setState(() {
              isLiked = !isLiked;
            });
          },
      child: Row(
        children: [
          Icon(
            widget.iconData,
            color: isLiked ? Colors.blue : likeColor,
            size: 22,
          ),
          const SizedBox(width: 10),
          Text(
            widget.label,
            style: TextStyle(
              color: isLiked ? Colors.blue : likeColor,
            ),
          )
        ],
      ),
    );
  }
}
