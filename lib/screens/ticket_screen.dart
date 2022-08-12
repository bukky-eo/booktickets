import 'package:bookticket/helpers/widgets.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utilis/constants.dart';
import 'package:bookticket/utilis/info_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilis/layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'Tickets',
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            Gap(AppLayout.getHeight(25)),
            TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(15),
              ),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
            Container(),
          ],
        ),
      ]),
    );
  }
}
