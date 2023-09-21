import 'package:designelather/constant.dart';
import 'package:designelather/core/utils/gaps.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_divider.dart';
class HallsContainer extends StatefulWidget {
  const HallsContainer({Key? key}) : super(key: key);

  @override
  State<HallsContainer> createState() => _HallsContainerState();
}
List<String> taps = const ['4', '+7', '3', '7', '2', '6', '1', '5','استديو'];
int current = 0;
class _HallsContainerState extends State<HallsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: 'الصالات',
        image: Image.asset(AssetsData.hallsImage),
      ),
      Gaps.vGap5,
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              child: GridView.builder(


    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisSpacing: 5,
    mainAxisSpacing: 2,
    crossAxisCount: 2,
    childAspectRatio: 0.7,

    ),
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: taps.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (contex, index) {
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
                          height: 40,
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
                                : kPrimaryGray3,
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

                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      const CustomDivider(),
    ],);
  }
}