import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilis/constants.dart';
import '../utilis/layout.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color: Colors.white)),
    );
  }
}

class Departure extends StatelessWidget {
  final String text;
  final IconData icon;
  const Departure({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xffbfc2df),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}

class ViewAll extends StatelessWidget {
  final String text;
  const ViewAll({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
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
    );
  }
}

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      // color: Colors.white,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xfff4f6fd)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * .44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white),
            child: const Center(
              child: Text('Airplane tickets'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * .44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50))),
                color: const Color(0xfff4f6fd)),
            child: const Center(
              child: Text('Hotels'),
            ),
          ),
        ],
      ),
    );
  }
}
