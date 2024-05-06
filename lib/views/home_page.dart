import 'package:flutter/material.dart';
import 'package:new_app/views/home/local_widget/custom_appbar.dart';

class AbaHomePage extends StatelessWidget {
  const AbaHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF02344F),
        appBar: const AbaAppBar(),
        body: Column(
          children: [
            profileSection(context),
            balenceAccount(context),
            abaBody(context),
          ],
        ));
  }
}

Widget balenceAccount(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 180,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color(0xFF01293D),
    ),
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(width: 10),
              Text(
                '\$100',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.visibility_outlined,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(2.0),
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF00BDDF),
                ),
                child: const Text(
                  'Default',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(width: 20),
              const Text(
                'Main account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.call_received_outlined,
                      color: Colors.green,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Recieve money',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                children: [
                  Icon(
                    Icons.call_made_outlined,
                    color: Colors.red,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Recieve money',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ))
            ],
          )
        ],
      ),
    ),
  );
}

class GridItem {
  final IconData icon;
  final String text;

  GridItem(this.icon, this.text);
}

final List<GridItem> gridItems = [
  GridItem(Icons.account_balance, 'Account'),
  GridItem(Icons.card_giftcard, 'Cards'),
  GridItem(Icons.payment, 'Payments'),
  GridItem(Icons.scanner, 'ABA Scan'),
  GridItem(Icons.favorite, 'Favorites'),
  GridItem(Icons.transfer_within_a_station, 'Transfer'),
];

Widget abaBody(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 390,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color(0xFF01293D),
    ),
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          height: 80,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                gridItems[index].icon,
                color: const Color(0xFF00BDDF),
                size: 30,
              ),
              Text(
                gridItems[index].text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget profileSection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    child: Row(children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/images/profile.png')),
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
      ),
      const SizedBox(width: 10),
      const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, Thornsopanha!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Text(
                'view profile',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 20,
              )
            ],
          )
        ],
      ),
    ]),
  );
}
