import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_divider.dart';

class PropertyFeatures extends StatefulWidget {
  const PropertyFeatures({Key? key}) : super(key: key);

  @override
  State<PropertyFeatures> createState() => _PropertyFeaturesState();
}

class _PropertyFeaturesState extends State<PropertyFeatures> {
  @override
  Widget build(BuildContext context) {
    bool checkboxValue1 = true;
    bool checkboxValue2 = true;
    bool checkboxValue3 = true;
    bool checkboxValue4 = true;
    bool checkboxValue5 = true;
    bool checkboxValue6 = true;
    bool checkboxValue7 = true;
    bool checkboxValue8 = true;
    return Column(
      children: [
        TextAndIcon(
          text: ' ممزيات العقار',
          image: Image.asset(AssetsData.propertyFeaturesImage),
        ),
      GridView(  shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 2,
          childAspectRatio: 8,

        ),
      children: [

        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue1,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue1 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                'شرفة',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),
        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue2,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue2 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                'تكيييف مركزي',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),
        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue3,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue3 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                '  روف',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),
        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue4,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue4 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                'غرفة للخادمة',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),
        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue5,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue5 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                '  سبا',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),
        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue6,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue6 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                ' مسبح خاص',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),
        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue7,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue7 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                '  حديقة خاصة',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),
        CheckboxListTile(
          activeColor: kPrimaryColorPurple,
          value: checkboxValue8,
          onChanged: (bool? value) {
            setState(() {
              checkboxValue8 = value!;
            });
          },
          title: Align(
              alignment: Alignment.topRight,
              child: Text(
                'حماية',
                style:
                Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
              )),
        ),



      ],
      ),
        const CustomDivider(),
      ],
    );
  }
}
