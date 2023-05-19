import 'package:flutter/material.dart';

void main() {
  runApp(ColorLearningApp());
}

class ColorLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Colors',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ColorLearningScreen(),
    );
  }
}

class ColorLearningScreen extends StatefulWidget {
  @override
  _ColorLearningScreenState createState() => _ColorLearningScreenState();
}

class _ColorLearningScreenState extends State<ColorLearningScreen> {

  List<ColorItem> colors = [

    ColorItem(name: 'Red', color: Colors.red),
    ColorItem(name: 'Green', color: Colors.green),
    ColorItem(name: 'Blue', color: Colors.blue),
    ColorItem(name: 'Yellow', color: Colors.yellow),
    ColorItem(name: 'Purple', color: Colors.purple),
    ColorItem(name: 'Orange', color: Colors.orange),
    ColorItem(name: 'Pink', color: Colors.pink),
    ColorItem(name: 'Cyan', color: Colors.cyan),
    ColorItem(name: 'Brown', color: Colors.brown),
    ColorItem(name: 'Teal', color: Colors.teal),

  ];

  int currentIndex = 0;

  void nextColor() {
    setState(() {
      currentIndex = (currentIndex + 1)%colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    ColorItem currentColor = colors[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Colors'),
      ),
      body: GestureDetector(
        onTap: nextColor,
        child: Container(
          color: currentColor.color,
          child: Center(
            child: Text(
              currentColor.name,
              style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),),

          ),
        ),
      ),
    );
  }


}

class ColorItem {
  final String name;
  final Color color;

  ColorItem({required this.name, required this.color});
}