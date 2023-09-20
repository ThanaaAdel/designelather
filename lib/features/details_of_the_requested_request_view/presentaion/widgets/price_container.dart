import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_divider.dart';
import '../../../../core/widgets/custom_text_field.dart';
class PriceContainer extends StatefulWidget {
  const PriceContainer({Key? key}) : super(key: key);

  @override
  State<PriceContainer> createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(text: 'السعر',image: Image.asset(AssetsData.moneyImage),),
      Gaps.vGap10,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextField(
                width: MediaQuery.of(context).size.width*0.4,
                stringInTextField: '1.000.000', textInputType: TextInputType.number, obscureText: false),
            Text('-',style: Styles.textStyle20.copyWith(color: kPrimaryColorBlack)),
            CustomTextField(
                width: MediaQuery.of(context).size.width*0.4,
                stringInTextField: '2.000.000', textInputType: TextInputType.number, obscureText: false),
          ],
        ),
      ),
      const CustomDivider(),
    ],);
  }
}