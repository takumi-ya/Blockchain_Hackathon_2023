import 'package:flutter/material.dart';
import 'package:voting_app/const/const_color.dart';

class MobileVotingScreen extends StatelessWidget {
  const MobileVotingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
          child: Text(
            '投票App',
            style: TextStyle(
              color: white,
            ),
          ),
        ),
        backgroundColor: black,
      ),
      backgroundColor: baseColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: deviceHeight * 0.1,
          vertical: deviceWidth * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: deviceWidth * 0.2,
                  height: deviceWidth * 0.15,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(deviceWidth * 0.01),
                  ),
                  child: Text(
                    '投票',
                    style: TextStyle(color: white, fontSize: deviceWidth * 0.1),
                  ),
                ),
                const Spacer(),
              ],
            ),
            Container(
              height: deviceWidth * 0.5,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(deviceWidth * 0.05),
              ),
              child: Text(
                'きのこの山と\nたけのこの里\nどっちが好き？',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: navyBlue,
                  fontSize: deviceWidth * 0.1,
                ),
              ),
            ),
            // SizedBox(
            //   height: deviceWidth * 0.2,
            // ),
            Container(
              width: deviceWidth * 0.6,
              height: deviceWidth * 0.2,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(deviceWidth * 0.05),
              ),
              child: FittedBox(
                child: Text(
                  'きのこの山',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: navyBlue,
                    fontSize: deviceWidth * 0.1,
                  ),
                ),
              ),
            ),
            Container(
              width: deviceWidth * 0.6,
              height: deviceWidth * 0.2,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(deviceWidth * 0.05),
              ),
              child: FittedBox(
                child: Text(
                  'たけのこの里',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: navyBlue,
                    fontSize: deviceWidth * 0.1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
