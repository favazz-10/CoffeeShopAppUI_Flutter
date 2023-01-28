import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(width: MediaQuery.of(context).size.width*0.55,
      backgroundColor: Colors.black,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffd17842),
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xffd17842)),
              accountName: Text(
                "Mo Fav",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("Mofav@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),//Text
              ), //circleAvatar
            ), //UserAccountDrawerHeader
          ), //DrawerHeader
          ListTile(
            leading: const Icon(Icons.person,color: Colors.white,),
            title: const Text(' My Profile ',style: TextStyle(color: Colors.white),),
            onTap: () {

            },
          ),
          ListTile(
            leading: const Icon(Icons.book,color: Colors.white,),
            title: const Text(' My Course ',style: TextStyle(color: Colors.white)),
            onTap: () {

            },
          ),
          ListTile(
            leading: const Icon(Icons.video_label,color: Colors.white,),
            title: const Text(' Saved Videos ',style: TextStyle(color: Colors.white)),
            onTap: () {

            },
          ),
          ListTile(
            leading: const Icon(Icons.edit,color: Colors.white,),
            title: const Text(' Edit Profile ',style: TextStyle(color: Colors.white)),
            onTap: () {

            },
          ),
          ListTile(
            leading: const Icon(Icons.logout,color: Colors.white,),
            title: const Text('LogOut',style: TextStyle(color: Colors.white)),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }

}