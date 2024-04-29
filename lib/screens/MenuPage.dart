import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> _plats = [];

  @override
  void initState() {
    super.initState();
    _fetchPlats();
  }

  Future<void> _fetchPlats() async {
    // Replace this method with your own logic to fetch plats
    // from wherever they are stored
    List<String> plats = ['Plat 1', 'Plat 2', 'Plat 3']; // Example data

    setState(() {
      _plats = plats;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: _plats.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_plats[index]),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Implement your logic to add the selected plat to the order
                // Code to be implemented
              },
            ),
          );
        },
      ),
    );
  }
}
