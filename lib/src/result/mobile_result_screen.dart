import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/const/const_color.dart';
import 'package:voting_app/widget/container_text.dart';

class MobileResultScreen extends StatelessWidget {
  const MobileResultScreen({
    super.key,
    required this.topic,
    required this.choice1,
    required this.numOfChoice1,
    required this.choice2,
    required this.numOfChoice2,
  });

  final String topic;
  final String choice1;
  final int numOfChoice1;
  final String choice2;
  final int numOfChoice2;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Routemaster.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
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
                    '結果',
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
                  topic,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerText(
                    width: deviceWidth * 0.6,
                    height: deviceWidth * 0.2,
                    radius: deviceWidth * 0.05,
                    color: numOfChoice1 > numOfChoice2 ? primaryColor : white,
                    text: Text(
                      choice1,
                      style: TextStyle(
                        color: navyBlue,
                        fontSize: deviceWidth * 0.1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '$numOfChoice1',
                    style: TextStyle(
                      color: numOfChoice1 > numOfChoice2 ? black : grey,
                      fontSize: deviceWidth * 0.15,
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: deviceWidth * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerText(
                    width: deviceWidth * 0.6,
                    height: deviceWidth * 0.2,
                    radius: deviceWidth * 0.05,
                    color: numOfChoice2 > numOfChoice1 ? primaryColor : white,
                    text: Text(
                      choice2,
                      style: TextStyle(
                        color: navyBlue,
                        fontSize: deviceWidth * 0.1,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Text(
                    '$numOfChoice2',
                    style: TextStyle(
                      color: numOfChoice2 > numOfChoice1 ? black : grey,
                      fontSize: deviceWidth * 0.15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
