import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'number_container.dart';
class LivingRoomContainer extends StatefulWidget {
  const LivingRoomContainer({Key? key}) : super(key: key);

  @override
  State<LivingRoomContainer> createState() => _LivingRoomContainerState();
}

class _LivingRoomContainerState extends State<LivingRoomContainer> {
  Color _colorContainer = kPrimaryGray3;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: 'غرف النوم',
        image: Image.asset(AssetsData.livingRoomImage),
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
