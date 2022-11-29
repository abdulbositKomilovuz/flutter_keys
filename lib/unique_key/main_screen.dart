import 'package:flutter/material.dart';

class UniqueKeyScreen extends StatefulWidget {
  const UniqueKeyScreen({super.key});

  @override
  State<UniqueKeyScreen> createState() => _UniqueKeyScreenState();
}

class _UniqueKeyScreenState extends State<UniqueKeyScreen> {
  final List<Widget> _containers = [
    // when you press on the container itself the color changes.
    // however try to press on floatingActionButton
    // and you will see that it is not swapping the container.
    // the logic is true but the containers are itself not swapping.
    // try to give UniqueKey() for both containers.
    // this will help the widget to rebuild its element and renderobject.
    const ColoredContainer(),
    const ColoredContainer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unique Key'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _containers,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // change the order of the widget.
          setState(
            () {
              _containers.insert(0, _containers.removeLast());
            },
          );
        },
      ),
    );
  }
}

class ColoredContainer extends StatefulWidget {
  const ColoredContainer({super.key});

  @override
  State<ColoredContainer> createState() => _ColoredContainerState();
}

class _ColoredContainerState extends State<ColoredContainer> {
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // swap the color.
        color = color == Colors.red ? Colors.black : Colors.red;
        setState(() {});
      },
      child: Container(
        height: 100,
        width: 100,
        color: color,
      ),
    );
  }
}
