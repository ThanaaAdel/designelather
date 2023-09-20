import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
class AgeOfThePropertyContainer extends StatefulWidget {
  const AgeOfThePropertyContainer({Key? key}) : super(key: key);

  @override
  State<AgeOfThePropertyContainer> createState() => _AgeOfThePropertyState();
}

class _AgeOfThePropertyState extends State<AgeOfThePropertyContainer> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextAndIcon(text: 'عمر العقار ',image: Image.asset(AssetsData.ageOfTheProperty),),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('3 سنوات',style: Styles.textStyle20.copyWith(color: kPrimaryColorBlack),),
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
        const Divider(height: 50,color: kPrimaryGray2,thickness: 2,indent: 20,endIndent: 20),
      ],);
  }
}