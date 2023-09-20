import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'number_container.dart';
class FurnitureContainer extends StatefulWidget {
  const FurnitureContainer({Key? key}) : super(key: key);

  @override
  State<FurnitureContainer> createState() => _FurnitureContainerState();
}

class _FurnitureContainerState extends State<FurnitureContainer> {
  Color _colorContainer = kPrimaryGray3;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: 'العفش',
        image: Image.asset(AssetsData.furnitureImage),
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
                  NumberContainer(text: ' مفروش جزئياً', colorContainer: _colorContainer,width: MediaQuery.of(context).size.width*0.22,),
                  NumberContainer(text: 'غير مفروش', colorContainer: _colorContainer,width: MediaQuery.of(context).size.width*0.22,),
                  NumberContainer(text: 'مفروش ', colorContainer: _colorContainer,width: MediaQuery.of(context).size.width*0.22,),
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
