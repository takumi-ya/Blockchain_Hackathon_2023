import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter/services.dart';
import 'package:voting_app/const/const_color.dart';
import 'package:voting_app/widget/container_text.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

class MobileVotingScreen extends StatefulWidget {
  const MobileVotingScreen({Key? key}) : super(key: key);

  @override
  _MobileVotingScreenState createState() => _MobileVotingScreenState();
}

class _MobileVotingScreenState extends State<MobileVotingScreen> {
  late Client httpClient;

  late Web3Client ethClient;

  final String myAddress = "0xFA004285b0C503A5350942005906f890De83d765";
  final String blockchainUrl =
      "https://rinkeby.infura.io/v3/b960cfdf66e64e4cbcd0507d90ba86a8";

  var totalVotesA = 0;
  var totalVotesB = 0;

  @override
  void initState() {
    httpClient = Client();
    ethClient = Web3Client(blockchainUrl, httpClient);
    getTotalVotes();
    super.initState();
  }

  Future<DeployedContract> getContract() async {
    String abiFile = await rootBundle.loadString("assets/contract.json");
    String contractAddress = "0xFA004285b0C503A5350942005906f890De83d765";
    final contract = DeployedContract(ContractAbi.fromJson(abiFile, "Voting"),
        EthereumAddress.fromHex(contractAddress));

    return contract;
  }

  Future<List<dynamic>> callFunction(String name) async {
    final contract = await getContract();
    final function = contract.function(name);
    final result = await ethClient
        .call(contract: contract, function: function, params: []);
    return result;
  }

  Future<void> getTotalVotes() async {
    List<dynamic> resultsA = await callFunction("getTotalVotesAlpha");
    List<dynamic> resultsB = await callFunction("getTotalVotesBeta");
    totalVotesA = resultsA[0];
    totalVotesB = resultsB[0];

    setState(() {});
  }

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
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
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
                      color: Colors.white,
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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      totalVotesA++;
                    });
                  },
                  child: Container(
                    width: deviceWidth * 0.8,
                    height: deviceWidth * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(deviceWidth * 0.05),
                      color: Colors.grey, // Replace with your desired color
                    ),
                    child: Center(
                      child: Text(
                        'きのこの山',
                        style: TextStyle(
                          color: navyBlue, // Assuming navyBlue is defined
                          fontSize: deviceWidth * 0.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * 0.1,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        totalVotesB++;
                      },
                    );
                  },
                  child: Container(
                    width: deviceWidth * 0.8,
                    height: deviceWidth * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(deviceWidth * 0.05),
                      color: Colors.grey, // Replace with your desired color
                    ),
                    child: Center(
                      child: Text(
                        'たけのこの里',
                        style: TextStyle(
                          color: navyBlue, // Assuming navyBlue is defined
                          fontSize: deviceWidth * 0.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceWidth * 0.075,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Routemaster.of(context).push('result'),
                  child: ContainerText(
                    width: deviceWidth * 0.2,
                    height: deviceHeight * 0.05,
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
