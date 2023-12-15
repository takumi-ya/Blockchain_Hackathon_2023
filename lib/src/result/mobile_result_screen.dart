import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:voting_app/const/const_color.dart';
import 'package:voting_app/model/vote_model.dart';
import 'package:voting_app/widget/container_text.dart';

class MobileResultScreen extends StatelessWidget {
  const MobileResultScreen({
    super.key,
    required this.vote,
  });

  final VoteModel vote;

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
                  vote.topic,
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
                    color: vote.numOfChoices[0] > vote.numOfChoices[1]
                        ? primaryColor
                        : white,
                    text: Text(
                      vote.choices[0],
                      style: TextStyle(
                        color: navyBlue,
                        fontSize: deviceWidth * 0.1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '${vote.numOfChoices[0]}',
                    style: TextStyle(
                      color: vote.numOfChoices[0] > vote.numOfChoices[1]
                          ? black
                          : grey,
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
                    color: vote.numOfChoices[1] > vote.numOfChoices[0]
                        ? primaryColor
                        : white,
                    text: Text(
                      vote.choices[1],
                      style: TextStyle(
                        color: navyBlue,
                        fontSize: deviceWidth * 0.1,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Text(
                    '${vote.numOfChoices[1]}',
                    style: TextStyle(
                      color: vote.numOfChoices[1] > vote.numOfChoices[0]
                          ? black
                          : grey,
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
