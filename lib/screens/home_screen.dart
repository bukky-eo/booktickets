import 'package:bookticket/screens/hotel_screen.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utilis/info_list.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookticket/utilis/constants.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        'Book Tickets',
                        style: Styles.headLineStyle1,
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/tick.webp'))),
                  ),
                ],
              ),
              const Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    color: Color(0xfff4f6fd),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xffbfc205),
                    ),
                    Gap(5),
                    Text(
                      'Search',
                      style: Styles.headLineStyle3,
                    )
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Flights',
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style: Styles.textStyle.copyWith(color: primary),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const Gap(20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: ticketList
                .map((singleTicket) => TicketView(ticket: singleTicket))
                .toList(),
          ),
        ),
        const Gap(15),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View all',
                    style: Styles.textStyle.copyWith(color: primary),
                  ),
                )
              ],
            ),
          ),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
              children: hotelList
                  .map((singleHotel) => HotelScreen(hotel: singleHotel))
                  .toList()),
        )
      ]),
    );
  }
}
