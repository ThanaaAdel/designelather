import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import '../../constant.dart';
import '../utils/styles.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key,
        required this.textPage,

        })
      : super(key: key);
  final String textPage;

  @override
  Widget build(BuildContext context) {
    return
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.close,color: Colors.black,size: 20,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(FontAwesome.long_arrow_left,color: kPrimaryColorBlack,size: 20,),
          ),
        ],
        title: Align(
            alignment: Alignment.centerRight,
            child: Center(child: Text(textPage,style: Styles.textStyle17.copyWith(color: kPrimaryColorBlack),))),
      );
  }
}