import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_divider.dart';
class BathroomContainer extends StatefulWidget {
  const BathroomContainer({Key? key}) : super(key: key);

  @override
  State<BathroomContainer> createState() => _BathroomContainerState();
}

class _BathroomContainerState extends State<BathroomContainer> {
  List<String> taps = const ['6', '5', '4', '3', '2', '1'];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextAndIcon(
        text: 'دورات المياه',
        image: Image.asset(AssetsData.pathRoomImage),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: ListView.builder(
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
                          width: 30,
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
