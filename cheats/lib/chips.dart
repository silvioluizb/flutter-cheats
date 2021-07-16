import 'package:flutter/material.dart';

class Actor {
  const Actor(this.name, this.initials);
  final String name;
  final String initials;
}

class CastList extends StatefulWidget {
  const CastList({Key? key}) : super(key: key);

  @override
  State createState() => CastListState();
}

class CastListState extends State<CastList> {
  final List<Actor> _cast = <Actor>[
    const Actor('Incompleto', 'AV'),
    const Actor('12/12/2020', 'MM'),
  ];

  Iterable<Widget> get actorWidgets sync* {
    for (final Actor actor in _cast) {
      yield Padding(
        padding: const EdgeInsets.only(
            left: 3.0, right: 3.0, top: 0.01, bottom: 0.01),
        child: Chip(
          deleteIconColor: Color(0xFFc7dde1),
          label: Text(
            actor.name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          padding: EdgeInsets.all(10.0),
          backgroundColor: Color(0xFF448e9a),
          onDeleted: () {
            setState(() {
              _cast.removeWhere((Actor entry) {
                return entry.name == actor.name;
              });
            });
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: actorWidgets.toList(),
    );
  }
}

class ChipFlight extends StatefulWidget {
  const ChipFlight({Key? key}) : super(key: key);

  @override
  State<ChipFlight> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ChipFlight> {
  @override
  Widget build(BuildContext context) {
    return const CastList();
  }
}
