import 'package:demo/unordered_list.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Coupon title:Weekend Special',
      'Description :"Enjoy 10% off on all items during weekends!"',
      'Validity:Valid every saturday and sunday until the end of the month',
      'Coupon Code: NIKEF10',
    ];
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Rewards',
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.currency_bitcoin),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.currency_rupee),
            )
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(0),
            width: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // IMAGE
                const Center(
                  child: Image(
                    image: AssetImage("assets/images/nike.webp"),
                    height: 175,
                    width: 500,
                    fit: BoxFit.fill,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '500',
                            style: TextStyle(),
                          ),
                          Text('Nike',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              )),
                          Text('Expiry Date',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                scale: 5.0,
                                // fit: BoxFit.fill,
                                image: AssetImage("assets/images/qrcode.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Flat 10% Off',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Container(
                  width: 130,
                  margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      border: DashedBorder.fromBorderSide(
                          dashLength: 1,
                          side: BorderSide(color: Colors.grey, width: 1)),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: const Text(
                    'Code : DJFSDF',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Use by 27th Feb',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                //List of items
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5, 0, 0),
                  child: UnorderedList(items),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Terms and conditions apply',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 12,
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),

                // Button
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 16),
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: const WidgetStatePropertyAll<Size>(
                                Size.fromWidth(300)),
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ))),
                        child: const Text('Reedeem Now')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
