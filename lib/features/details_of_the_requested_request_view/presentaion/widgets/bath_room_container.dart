import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'number_container.dart';
class BathroomContainer extends StatefulWidget {
  const BathroomContainer({Key? key}) : super(key: key);

  @override
  State<BathroomContainer> createState() => _BathroomContainerState();
}

class _BathroomContainerState extends State<BathroomContainer> {
  Color _colorContainer = kPrimaryGray3;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: 'دورات المياه',
        image: Image.asset(AssetsData.pathRoomImage),
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
