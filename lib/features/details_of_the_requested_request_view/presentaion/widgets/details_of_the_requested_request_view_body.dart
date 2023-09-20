import 'package:designelather/core/widgets/custom_button.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/age_of_the_property.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/bath_room_container.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/floor_container.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/furniture_container.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/interface_container.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/living_room_container.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/price_container.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/property_features.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/space_container.dart';
import 'package:designelather/features/details_of_the_requested_request_view/presentaion/widgets/street_width_container.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../core/widgets/custom_appbar.dart';
import 'halls_container.dart';

class DetailsOfTheRequestedRequestViewBody extends StatefulWidget {
  const DetailsOfTheRequestedRequestViewBody({Key? key}) : super(key: key);

  @override
  State<DetailsOfTheRequestedRequestViewBody> createState() =>
      _DetailsOfTheRequestedRequestViewBodyState();
}

class _DetailsOfTheRequestedRequestViewBodyState
    extends State<DetailsOfTheRequestedRequestViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CustomAppBar(
              textPage: 'تفاصيل العقار المطلوب',
            ),
            HallsContainer(),
            LivingRoomContainer(),
            BathroomContainer(),
            FurnitureContainer(),
            SpaceContainer(),
            FloorContainer(),
            AgeOfThePropertyContainer(),
            StreetWidthContainer(),
            InterfaceContainer(),
            PropertyFeatures(),
            PriceContainer(),
            CustomButton(title: 'التالي', textRouting: ''),

          ],
        ),
      ),
    );
  }
}
