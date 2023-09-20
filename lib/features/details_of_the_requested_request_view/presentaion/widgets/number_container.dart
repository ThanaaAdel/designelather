import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/utils/styles.dart';
class NumberContainer extends StatelessWidget {
  const NumberContainer(
      {Key? key, required this.text, required this.colorContainer, this.width})
      : super(key: key);
  final String text;
  final Color colorContainer;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Container(
        height: 27,
        width: width ?? 27,
        decoration: BoxDecoration(
            color: colorContainer,
            border: Border.all(color: kPrimaryGray),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
              text,
              style: Styles.textStyle17.copyWith(color: kPrimaryColorBlack),
            )),
      ),
    );
  }
}