import 'package:flutter/material.dart';

class Clicker extends StatefulWidget {
  @override
  _ClickerState createState() => _ClickerState();
}

class _ClickerState extends State<Clicker> {
  bool _checked = false;
  bool _checked1 = false;
  bool _checked2 = false;
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  String total = "100";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Checkbox(
              value: _checked,
              onChanged: (value) {
                setState(() {
                  _checked = !_checked;
                });
              },
            ),
            Text('Extra Funnel'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: _checked1,
              onChanged: (value1) {
                setState(() {
                  _checked1 = !_checked1;
                });
              },
            ),
            Text('Extra Tube'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: _checked2,
              onChanged: (value2) {
                setState(() {
                  _checked2 = !_checked2;
                });
              },
            ),
            Text('Extra Nozzle'),
          ],
        ),
      ],
    );
  }
}
