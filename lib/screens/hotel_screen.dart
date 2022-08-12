import 'package:bookticket/utilis/constants.dart';
import 'package:bookticket/utilis/layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(
          left: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
          color: Color(0xff526799),
          borderRadius: BorderRadius.circular(AppLayout.getHeight(21)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              spreadRadius: 5,
              color: Colors.grey.shade200,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: primary,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/${hotel['image']}")),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
