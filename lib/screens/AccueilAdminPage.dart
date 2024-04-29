import 'package:flutter/material.dart';

import 'CommandesAdminPage.dart';
import 'DashboardCommandesPage.dart';
import 'MenuAdminPage.dart';

class AccueilAdminPage extends StatefulWidget {
  static const routeName = "/AccueilAdminPage";

  @override
  _AccueilAdminPageState createState() => _AccueilAdminPageState();
}

class _AccueilAdminPageState extends State<AccueilAdminPage> with TickerProviderStateMixin {
  List<String> _utilisateurs = [];
  TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    fetchUsers(); // Fetch users from Firestore on initialization
  }

  Future<void> fetchUsers() async {
    // Your fetchUsers implementation without Firebase
  }

  Future<void> addUser(String email, String password, String role) async {
    // Your addUser implementation without Firebase
  }

  Future<void> deleteUser(String email) async {
    // Your deleteUser implementation without Firebase
  }

  Future<void> updateUser(String email, String newEmail, String newPassword, String newRole) async {
    // Your updateUser implementation without Firebase
  }

  void _onTabTapped(int index) {
    // Your _onTabTapped implementation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/connexion', ModalRoute.withName('/connexion'));
            },
          ),
          IconButton(
            icon: Icon(Icons.analytics),
            onPressed: () {
              // TODO: Handle analytics button press
            },
          ),
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {
              // TODO: Handle people button press
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // TODO: Handle shopping cart button press
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Chercher utilisateurs ...',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
            onChanged: (value) {
              setState(() {
                if (value.isEmpty) {
                  fetchUsers();
                } else {
                  _utilisateurs = _utilisateurs
                      .where((utilisateur) =>
                      utilisateur.toLowerCase().contains(value.toLowerCase()))
                      .toList();
                }
              });
            },
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardCommandesPage(),
                        )
                    );
                  },
                  child: Container(),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _utilisateurs.length,
                itemBuilder: (context, index) {
                  final utilisateur = _utilisateurs[index];

                  return ListTile(
                    title: Text(utilisateur ?? ''),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            deleteUser(utilisateur);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {


                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Ajouter un utilisateur'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Commandes',
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {
          switch (index) {
            case 0:
            // Do nothing, already on the home page
              break;
            case 1:
            // Navigate to the menu page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuAdminPage()),
              );
              break;
            case 2:
            // Navigate to the orders page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommandesAdminPage()),
              );
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
