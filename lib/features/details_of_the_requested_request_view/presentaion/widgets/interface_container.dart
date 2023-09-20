import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_divider.dart';
class  InterfaceContainer extends StatefulWidget {
  const InterfaceContainer ({Key? key}) : super(key: key);

  @override
  State<InterfaceContainer> createState() => _InterfaceContainerState();
}

class _InterfaceContainerState extends State<InterfaceContainer> {
  bool checkboxValue1 = true;
  bool checkboxValue2 = true;
  bool checkboxValue3 = true;
  bool checkboxValue4 = true;
  bool checkboxValue5 = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: ' الواجهة',
        image: Image.asset(AssetsData.interfaceImage),
      ),
    GridView(
     shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisSpacing: 2,
     mainAxisSpacing: 2,
    crossAxisCount: 2,
      childAspectRatio: 6,

    ),
    children: <Widget>[
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
              ' شمال',
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
              ' غير محدد',
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
              '  جنوب',
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
              'شرق',
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
              'غرب',
              style:
              Styles.textStyle14.copyWith(color: kPrimaryColorBlack),
            )),

      ),
      Container(),

    ],
    ),

      const CustomDivider(),
    ],);
  }
}
