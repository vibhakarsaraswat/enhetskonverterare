import 'package:flutter/material.dart';
import 'package:enhetskonverterare/category.dart';

final _backgroundColor = Colors.green[100];

class CategoryRoute extends StatelessWidget {

  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  /// Creating the correct number of rows for the list view.
  /// For portrait, we construct a [ListView] from the list of category widgets.
  ///
  /// '_buildCategoryWidgets' accepts a  List<Widget> of type 'categories' and returns ListView.builder
  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {

    // Creating an empty List i.e. 'categories' of type '<Category>'
    // A single '<Category>' wodget is composed of an [Icon], a [Text] and InkWell/Highlighter[Color]
    final categories = <Category>[];

    // adding 'Category' elements to the 'categories' List.
    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }

    // providing implementation for listView.
    final listView = Container(
      color: _backgroundColor,  // BG color for the entire container
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories), //
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Enhets konverterare',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}