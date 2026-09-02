import 'package:flutter/material.dart';
import 'searchBar.dart';

import 'filesView.dart';

class DriveHome extends StatefulWidget {
  const DriveHome({super.key});

  @override
  State<DriveHome> createState() => _DriveHomeState();
}

class _DriveHomeState extends State<DriveHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 3;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomSearchBar(),

            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Mi unidad'),
                Tab(text: 'Computadoras'),
              ],
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const FilesGridView(), //Mi unidad
                  const Center(child: Text('Computadoras')),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ), //pestañas

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Página principal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'Destacados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Compartidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_outlined),
            label: 'Archivos',
          ),
        ],
      ),
    );
  }
}
