import 'package:flutter/material.dart';

class UnorderedList extends StatelessWidget {
  const UnorderedList(this.texts, {super.key});
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(const SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• ",
            style:  TextStyle(
                fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey)),
        Expanded(
          child: Text(text,style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,color: Colors.grey)),
        ),
      ],
    );
  }
}
