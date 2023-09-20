import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/utils/styles.dart';
class TextAndIcon extends StatelessWidget {
  const TextAndIcon({Key? key, required this.text, required this.image}) : super(key: key);
  final String text;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(text,style: Styles.textStyle17.copyWith(color: kPrimaryColorBlack),),
          Gaps.hGap5,
          image,
        ],),
    );

  }
}