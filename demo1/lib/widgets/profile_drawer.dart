import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DrawerHeader(
            child: Text("Profile Options", style: TextStyle(fontSize: 20)),
          ),
          ListTile(title: Text("Option 1")),
          ListTile(title: Text("Option 2")),
          ListTile(title: Text("Option 3")),
        ],
      ),
    );
  }
}
