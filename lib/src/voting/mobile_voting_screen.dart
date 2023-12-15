import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/const/const_color.dart';
import 'package:voting_app/widget/container_text.dart';

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
          horizontal: deviceWidth * 0.05,
          vertical: deviceHeight * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: deviceWidth * 0.2,
                height: deviceWidth * 0.1,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(deviceWidth * 0.01),
                ),
                child: FittedBox(
                  child: Text(
                    '投票',
                    style: TextStyle(
                      color: white,
                      fontSize: deviceWidth * 0.08,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              ContainerText(
                width: double.infinity,
                height: deviceWidth * 0.5,
                radius: deviceWidth * 0.05,
                text: Text(
                  'きのこの山と\nたけのこの里\nどっちが好き？',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: navyBlue,
                    fontSize: deviceWidth * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * 0.2,
              ),
              Align(
                alignment: Alignment.center,
                child: ContainerText(
                  width: deviceWidth * 0.8,
                  height: deviceWidth * 0.2,
                  radius: deviceWidth * 0.05,
                  text: Text(
                    'きのこの山',
                    style: TextStyle(
                      color: navyBlue,
                      fontSize: deviceWidth * 0.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * 0.1,
              ),
              Align(
                alignment: Alignment.center,
                child: ContainerText(
                  width: deviceWidth * 0.8,
                  height: deviceWidth * 0.2,
                  radius: deviceWidth * 0.05,
                  text: Text(
                    'たけのこの里',
                    style: TextStyle(
                      color: navyBlue,
                      fontSize: deviceWidth * 0.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * 0.05,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Routemaster.of(context).push('result'),
                  child: ContainerText(
                    width: deviceWidth * 0.2,
                    height: deviceHeight * 0.1,
                    radius: deviceWidth * 0.01,
                    text: Text(
                      '結果へ',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: deviceWidth * 0.05,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
