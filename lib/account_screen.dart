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
     bool light = true;
    final List<MapEntry<IconData, String>> accountList =
        accountItems.entries.toList();
    return Scaffold(
      appBar: AppBar(
        // scrolledUnderElevation:0,
        // surfaceTintColor: Colors.transparent,
        forceMaterialTransparency:true, // Removes the color of app bar chaning while scrolling
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
            style:const TextStyle(
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
                    width: 2, color: const Color.fromRGBO(212, 211, 212, 0.238)),
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
                        style: const TextStyle(color: Colors.grey,fontSize: 12),
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
                              entry.value!='Sound' && entry.value!='Dark Mode' ?const Icon(Icons.arrow_forward_ios_outlined,size:12): const SwitchWidget(),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 50,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          // This bool value toggles the switch.
          value: light,
          activeColor:Theme.of(context).colorScheme.primary,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
            });
          },
        ),
      ),
    );
  }
}
