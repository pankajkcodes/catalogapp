import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final imgUrl =
      "https://w7.pngwing.com/pngs/710/220/png-transparent-service-catalog-organization-management-consultant-cloud-security-logo-blue-electronics-company-thumbnail.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: const Text("Catalog App"),
                  accountEmail: const Text("support@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                  ))),
          const ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.info_circle, color: Colors.white),
            title: Text(
              "About",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.cursor_rays, color: Colors.white),
            title: Text(
              "Privacy",
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
