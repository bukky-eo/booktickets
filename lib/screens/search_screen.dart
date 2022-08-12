import 'package:bookticket/helpers/widgets.dart';
import 'package:bookticket/utilis/constants.dart';
import 'package:bookticket/utilis/layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(20),
            horizontal: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are you looking for ?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          TicketTabs(
            firstTab: 'Airplane tickets',
            secondTab: 'Hotels',
          ),
          Gap(AppLayout.getHeight(20)),
          const Departure(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(AppLayout.getHeight(15)),
          const Departure(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(18),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: const Color(0xD91130CE),
              ),
              child: Center(
                child: Text(
                  'Book Tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Gap(AppLayout.getHeight(40)),
          ViewAll(text: 'Upcoming Flights'),
          Gap(AppLayout.getHeight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(15),
                    horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              image: AssetImage('images/sit.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early bookings of this flight, Don't miss out this chance",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(200),
                        width: size.width * 0.44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        decoration: BoxDecoration(
                          color: Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount for survey',
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                                'Take the survey about our services and get discount',
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))
                          ],
                        ),
                      ),
                      Positioned(
                          top: -40,
                          right: -44,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xff189999)),
                                color: Colors.transparent),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                      height: AppLayout.getHeight(210),
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15)),
                      decoration: BoxDecoration(
                        color: Color(0xffec6545),
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(18),
                        ),
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Take love',
                            style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(AppLayout.getHeight(5)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 35)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 50)),
                            TextSpan(text: '😘', style: TextStyle(fontSize: 35))
                          ]))
                        ],
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
