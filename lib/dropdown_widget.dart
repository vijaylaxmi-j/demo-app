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

    return DropdownMenu<String>(
    //  inputDecorationTheme: InputDecorationTheme(
    //   constraints: BoxConstraints(maxHeight: 50),
    //  ),
      initialSelection: widget.items.first,
      textStyle: const TextStyle(
        fontSize: 15,
        
      ),
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: widget.items.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value,);
      }).toList(),
    );
  }
}
