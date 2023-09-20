import 'package:flutter/material.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_divider.dart';
class SpaceContainer extends StatefulWidget {
  const SpaceContainer({Key? key}) : super(key: key);

  @override
  State<SpaceContainer> createState() => _SpaceContainerState();
}

class _SpaceContainerState extends State<SpaceContainer> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextAndIcon(
          text: 'المساحة', image: Image.asset(AssetsData.spaceImage),),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('  م\u00b2',style: Styles.textStyle20.copyWith(

                  color: kPrimaryColorBlack),),
              Text(' 100',style: Styles.textStyle20.copyWith(

                  color: kPrimaryColorBlack),),
            ],
          ),
        ),
        Slider(
          value: _currentSliderValue,
          activeColor: kPrimaryColorPurple,
          inactiveColor: kPrimaryGray2,
          max: 100,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
        const CustomDivider(),
      ],);
  }
}