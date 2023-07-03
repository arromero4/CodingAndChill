import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
        image: NetworkImage(
            'https://yt3.ggpht.com/ytc/AKedOLTwHA1cT71qztE9HC9DrYV9dPU5-UwfCfs_iy2IUQ=s900-c-k-c0x00ffffff-no-rj'),
        width: 100,
        height: 100,
        fit: BoxFit.fill,
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Image.asset('assets/images/cody.jpg');
        });
  }
}
