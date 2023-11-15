import 'package:demo2/model/option_data.dart';
import 'package:demo2/model/score.dart';
import 'package:flutter/material.dart';

import '../widget/custom.dart';
import '../widget/item_cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text(
            'User Setting',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Pacifico',
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('asset/image/user.jpeg'),
                    ),
                    title: Text(
                      'Luon Verak',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    subtitle: Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (Map map in list)
                        Padding(
                          padding: const EdgeInsets.only(right: 20, bottom: 20),
                          child: Column(
                            children: [
                              Text(
                                '${map['point']}',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                '${map['option']}',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomWidget(
                iconData: Icons.attach_money,
                text: 'Wallet',
              ),
              CustomWidget(
                iconData: Icons.wallet_giftcard,
                text: 'Delivery',
              ),
              CustomWidget(
                iconData: Icons.message_outlined,
                text: 'Message',
              ),
              CustomWidget(
                iconData: Icons.currency_bitcoin,
                text: 'Service',
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: listOptionData.length,
                itemBuilder: (context, index) => itemCart(
                  listOptionData[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
