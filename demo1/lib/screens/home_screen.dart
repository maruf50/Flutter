import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/profile_drawer.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/dashboard/pie_chart_widget.dart';
import '../widgets/dashboard/line_chart_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _openEndDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildDashboard() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Client Category Breakdown',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 200, child: PieChartWidget()),
          const SizedBox(height: 24),
          const Text(
            'Company Profit Over Time',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 200, child: LineChartWidget()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const ProfileDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const SearchBarWidget(),
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.black),
            onPressed: _openEndDrawer,
          ),
        ],
      ),
      body: _selectedIndex == 0
          ? _buildDashboard()
          : Center(child: Text('Page $_selectedIndex')),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
      ),
    );
  }
}
