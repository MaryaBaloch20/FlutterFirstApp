import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const accountImage = "assets/images/AyezaKhan.png";
    return Drawer(
      // backgroundColor: Colors.blue[900],
      child: ListView(
        //padding: const EdgeInsets.all(0.0),
        children: const [
          DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0.0),
                accountName: Text(
                  "Marya Baloch",
                  style: TextStyle(fontSize: 20.0),
                ),
                accountEmail: Text("Maryabaloch7@gmail.com",
                    style: TextStyle(fontSize: 17.0)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(accountImage),
                ),
              )),
          Divider(height: 0.1),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
