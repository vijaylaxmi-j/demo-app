import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final List<String> items;

  const DropdownWidget({super.key, required this.items});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.items.first;

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        focusColor: Colors.white,
        isDense: true,
        elevation: 8,
        style: const TextStyle(color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.zero),
        dropdownColor: Colors.white,
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
