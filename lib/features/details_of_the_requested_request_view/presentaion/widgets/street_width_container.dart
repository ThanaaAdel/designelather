import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_divider.dart';
class StreetWidthContainer extends StatefulWidget {
  const StreetWidthContainer({Key? key}) : super(key: key);

  @override
  State<StreetWidthContainer> createState() => _StreetWidthContainerState();
}

class _StreetWidthContainerState extends State<StreetWidthContainer> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextAndIcon(text: ' عرض الشارع',image: Image.asset(AssetsData.streetWidth),),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('  متر\u00b2',style: Styles.textStyle20.copyWith(

                  color: kPrimaryColorBlack),),
              Text(' 20',style: Styles.textStyle20.copyWith(

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