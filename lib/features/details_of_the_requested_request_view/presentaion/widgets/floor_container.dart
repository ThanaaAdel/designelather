import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'number_container.dart';
class FloorContainer extends StatefulWidget {
  const FloorContainer({Key? key}) : super(key: key);

  @override
  State<FloorContainer> createState() => _FloorContainerState();
}

class _FloorContainerState extends State<FloorContainer> {
  bool isClick = false;
  Color _colorContainer = kPrimaryGray3;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        TextAndIcon(
          text: 'الدور',
          image: Image.asset(AssetsData.floorImage),
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
                    Ink(
                        child: InkWell(
                          child: Container(
                            height: 27,
                            width: 51,
                            decoration: BoxDecoration(
                                color: _colorContainer,
                                border: Border.all(color: kPrimaryGray),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Text(
                                  'ارضي',
                                  style: Styles.textStyle17.copyWith(color: kPrimaryColorBlack),
                                )),
                          ),
                          onTap: () {
                            setState(() {
                              _colorContainer = _colorContainer ==   kPrimaryGray3 ?
                              const Color(0xffC6B6FF) :
                              kPrimaryGray3;
                            });
                          },
                        )),


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
      ],
    );
  }
}