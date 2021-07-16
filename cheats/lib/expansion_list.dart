import 'package:flutter/material.dart';

class ExpansionCarga extends StatefulWidget {
  @override
  _ExpansionListState createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionCarga> {
  Widget expansionPanel() {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

    Size size = MediaQuery.of(context).size;

    return ListTileTheme(
        tileColor: Color(0xFF7daeb7),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(15.0),
            topRight: const Radius.circular(15.0),
          ),
        ),
        child: Theme(
          data: theme,
          child: ExpansionTile(
            initiallyExpanded: false,
            childrenPadding: EdgeInsets.symmetric(vertical: size.width * 0.01),
            title: Text(
              "CARGA",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter'),
            ),
            children: <Widget>[Text("example")],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: new EdgeInsets.only(top: size.height * 0.03),
      padding: new EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: expansionPanel(),
    );
  }
}
