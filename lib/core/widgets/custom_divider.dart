import 'package:flutter/material.dart';

import '../../constant.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(height: 40,color: kPrimaryGray2,thickness: 2,indent: 20,endIndent: 20);
  }
}
