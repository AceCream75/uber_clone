import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_customer_app/widgets/upcoming_ride_itmelayout_widget.dart';


class UpComingRideScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<UpComingRideScreen> {
  List<String> rideTimes = [
    "Today, 9:30 AM",
    "July 20, 2021 8:25 AM",
    "July 25, 2021 8:25 AM"
  ];
  List<String> rideType = ["Uthao Short Trip", "Uthao Long Trip", "Uthao VIP Trip"];
  List<String> pickUpAdd = [
    "38, rue des Nations",
    "14, boulevard Amiral",
    "75, Rue Roussy"
  ];
  List<String> dropUpAdd = [
    "54, rue du Gue Jacquet",
    "75, Rue Roussy",
    "14, boulevard Amiral"
  ];
  List<String> amount = ["TK 7,000", "TK 2,000", "TK 9,000"];
  List<String> image = [
    "assets/mapiamge.jpeg",
    "assets/mapiamge.jpeg",
    "assets/mapiamge.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return UpcomingRideItmeLayoutWidget(
            rideTime: rideTimes[index],
            rideName: rideType[index],
            droopupAddress: dropUpAdd[index],
            pickupAddress: pickUpAdd[index],
            rideAmount: amount[index],
            rideImage: image[index],
          );
        });
  }
}
