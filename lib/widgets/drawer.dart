import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    const imageURL =
        "https://imgs.search.brave.com/YH35X2Zs4grMsS2ZHm42csf86g0SjckbsKU9jZ78Uwo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA0Lzk5LzIxLzc5/LzM2MF9GXzQ5OTIx/Nzk4OF9NaHRBMXJl/NEpxNUJOUXV1UUx3/TGhiaUdVbEtvRXRU/Qi5qcGc";

    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        children: const [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Random Name"),
                accountEmail: Text("name@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
