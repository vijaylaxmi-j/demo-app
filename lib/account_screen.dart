import 'package:demo/dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<String> list = <String>['English', 'Hindi', 'Spanish'];
final Map<IconData, String> accountItems = {
    Icons.account_balance_wallet_outlined: 'Wallet',
    Icons.circle_notifications_outlined: 'Notification',
    Icons.monetization_on_outlined: 'Refer & Earn',
    Icons.article_outlined: 'KYC Detail',
    Icons.assignment_late_outlined: 'About Us',
    Icons.chat_bubble_outline: 'Chat With Us',
    Icons.question_answer_outlined: 'FAQ',
    Icons.feedback_outlined: 'Feedback',
    Icons.fast_forward_outlined: 'How To Play',
    Icons.notes_outlined: 'Terms and Condition',
    Icons.dark_mode_outlined: 'Dark Mode',
    Icons.speaker_phone_outlined: 'Sound',
    Icons.logout: 'Logout',
  };

  @override
  Widget build(BuildContext context) {
    final List<MapEntry<IconData, String>> accountList =
        accountItems.entries.toList();
    return Scaffold(
      appBar: AppBar(
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromRGBO(212, 211, 212, 0.238),
            width: 3,
          ),
        ),
        actions: <Widget>[
          DropdownWidget(
            items: list,
          ),
        ],
        title: Text('Yowza',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 2, color: Color.fromRGBO(212, 211, 212, 0.238)),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/nike.webp'),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile Name',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'User Id:1545858N',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.create_rounded)),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: accountList.length,
                    itemBuilder: (context, index) {
                      final MapEntry<IconData, String> entry =
                          accountList[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(
                                212, 211, 212, 0.238), // Border color
                            width: 1, // Border width
                          ),
                          borderRadius: BorderRadius.circular(
                              10), // Optional: Rounded corners
                        ),
                        child: ListTile(
                          leading: Icon(entry.key),
                          title: Text(entry.value,style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 12,
                          ),),
                          trailing:
                              const Icon(Icons.arrow_forward_ios_outlined,size:12),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
