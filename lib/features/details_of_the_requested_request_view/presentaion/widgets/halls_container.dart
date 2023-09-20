import 'package:designelather/constant.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'number_container.dart';
class HallsContainer extends StatefulWidget {
  const HallsContainer({Key? key}) : super(key: key);

  @override
  State<HallsContainer> createState() => _HallsContainerState();
}
Color _colorContainer = kPrimaryGray3;
class _HallsContainerState extends State<HallsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: 'الصالات',
        image: Image.asset(AssetsData.hallsImage),
      ),
      Ink(
          child: InkWell(
            child:
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  NumberContainer(text: '+7', colorContainer: _colorContainer),
                  NumberContainer(text: '7', colorContainer: _colorContainer),
                  NumberContainer(text: '6', colorContainer: _colorContainer),
                  NumberContainer(text: '5', colorContainer: _colorContainer),
                  NumberContainer(text: '4', colorContainer: _colorContainer),
                  NumberContainer(text: '3', colorContainer: _colorContainer),
                  NumberContainer(text: '2', colorContainer: _colorContainer),
                  NumberContainer(text: '1', colorContainer: _colorContainer),

                ],
              ),
            ),
            onTap: () {
              setState(() {
                _colorContainer = _colorContainer ==   kPrimaryGray3 ?
                const Color(0xffC6B6FF) :
                kPrimaryGray3;
              });
            },
          )),
      const CustomDivider(),
    ],);
  }
}
