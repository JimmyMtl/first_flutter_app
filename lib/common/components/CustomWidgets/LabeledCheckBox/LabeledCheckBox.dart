import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function onChanged;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color.fromARGB(255, 0, 192, 249);
    }
    return const Color.fromARGB(255, 0, 192, 249);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue);
            },
          ),
          Text(
            label,
            style: const TextStyle(color: Color.fromARGB(255, 108, 114, 127)),
          ),
        ],
      ),
    );
  }
}
