import 'package:flutter/material.dart';

class DetailDropDownButton extends StatefulWidget {
  const DetailDropDownButton({this.options, this.hint});
  final List<String> options;
  final String hint;

  @override
  _DetailDropDownButton createState() => _DetailDropDownButton(this.options[0]);
}

class _DetailDropDownButton extends State<DetailDropDownButton> {
  _DetailDropDownButton(this.dropdownValue);
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1.apply(
          color: Theme.of(context).accentColor,
        );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).accentColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButton<String>(
        hint: Text(
          widget.hint,
          style: textStyle,
        ),
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 0,
        style: textStyle,
        underline: Container(),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: widget.options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: textStyle,
            ),
          );
        }).toList(),
      ),
    );
  }
}
