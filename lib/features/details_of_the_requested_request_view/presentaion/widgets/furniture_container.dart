import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/widgets/custom_divider.dart';
class FurnitureContainer extends StatefulWidget {
  const FurnitureContainer({Key? key}) : super(key: key);

  @override
  State<FurnitureContainer> createState() => _FurnitureContainerState();
}

class _FurnitureContainerState extends State<FurnitureContainer> {

  List<String> taps = const [
    'مفروش جزئيا',
    'غير مفروش',
    'مفروش',
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: 'العفش',
        image: Image.asset(AssetsData.furnitureImage),
      ),
     Gaps.vGap10,
     SizedBox(
       height: MediaQuery.of(context).size.height*0.06,
       child: ListView.builder(
         padding: EdgeInsets.zero,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: taps.length,
    scrollDirection: Axis.horizontal,
         shrinkWrap: true,

        itemBuilder: (contex,index){
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    current = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3.0,
                          offset: const Offset(-1, 0))
                    ],
                    borderRadius: BorderRadius.circular(12),
                    color: current == index
                        ? const Color(0xffC6B6FF)
                        :  kPrimaryGray3,
                  ),
                  child: Center(
                    child: Text(
                      taps[index],
                      style: TextStyle(
                          fontSize: 11,
                          color: current == index
                              ? kPrimaryColorBlack
                              : kPrimaryColorBlack),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // Visibility(
              //     visible: current == index,
              //     child: Container(
              //       width: 5,
              //       height: 5,
              //       decoration: const BoxDecoration(
              //           color: kPrimaryColorPurple, shape: BoxShape.circle),
              //     ))
            ],
          );
    },),
     ),
      const CustomDivider(),
    ],);
  }
}
