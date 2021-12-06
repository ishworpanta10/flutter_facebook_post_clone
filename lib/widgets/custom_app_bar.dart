import 'package:flutter/material.dart';
import 'package:share_bazar_media/constants/constants.dart';

AppBar customAppBar() => AppBar(
      backgroundColor: scaffoldColor,
      elevation: 0,
      title: const Text(
        'Share Bazar Media',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: InkWell(
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
