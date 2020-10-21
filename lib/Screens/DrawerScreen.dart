import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Sodiqmirzo Sattorov'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/my.jpeg'),
            ),
            accountEmail: Text('mr.sodiqmirzosattorov@gmail.com'),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Group',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: 'New Secret Chat',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: 'New Channel',
            onTilePressed: (){},
          ),
          Divider(),
          DrawerListTile(
            iconData: Icons.contacts,
            title: 'Contacts',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.folder_sharp,
            title: 'Folders',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: 'Saved Messages',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: 'Calls',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.person_add,
            title: 'Invite Friends',
            onTilePressed: (){},
          ),
          Divider(),
          DrawerListTile(
            iconData: Icons.settings,
            title: 'Settings',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            onTilePressed: (){},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget{
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;


  DrawerListTile({this.iconData, this.title, this.onTilePressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16),),
    );
  }

}
