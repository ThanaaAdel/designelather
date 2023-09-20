import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomRowFunction extends StatelessWidget {
  const CustomRowFunction({Key? key, required this.kNamePageFromArrow, required this.colorRow}) : super(key: key);
final String kNamePageFromArrow;
final Color colorRow;
  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 45,
      width: 45,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: colorRow,
      ),
      child: Center(
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).push(kNamePageFromArrow);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xff5E616F),
          )),
    );
  }
}
