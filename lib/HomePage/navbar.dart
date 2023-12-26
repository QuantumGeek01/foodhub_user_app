import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
       padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("American Burger"),
            accountEmail: const Text("americanBurger@gamil.com"),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.network(
                'https://thumbs.dreamstime.com/b/burger-icon-cheese-logo-isolated-vector-white-background-trendy-icons-modern-symbols-flat-illustration-graphic-web-190660929.jpg',
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            )),
              decoration:const BoxDecoration(
                  gradient:LinearGradient(
                      begin:Alignment.topRight,
                      end:Alignment.bottomLeft,
                      colors:[
                        Colors.amber,
                        Colors.cyan
                      ]
                  )
              )
          ),
          Padding(
            padding:const EdgeInsets.only(left:5),
            child:ListTile(
              onTap:(){
                Navigator.pop(context);
              },
              leading:const Icon(Icons.home),
              title:const Text('Home'),
              contentPadding:const EdgeInsets.all(5),
            ),
          ),
          const Padding(
            padding:EdgeInsets.only(left:5),
            child: ListTile(
              leading:Icon(Icons.attach_money),
              title:Text('My Earnings'),
              contentPadding:EdgeInsets.all(5),
            ),
          ),
          const Padding(
            padding:EdgeInsets.only(left:5),
            child: ListTile(
              leading:Icon(Icons.list),
              title:Text('New orders'),
              contentPadding:EdgeInsets.all(5),
            ),
          ),
          const Padding(
            padding:EdgeInsets.only(left:5),
            child: ListTile(
              leading:Icon(Icons.history),
              title:Text('History-orders'),
              contentPadding:EdgeInsets.all(5),
            ),
          ),
          const Padding(
            padding:EdgeInsets.only(left:5),
            child: ListTile(
              leading:Icon(Icons.logout),
              title:Text('Logout'),
              contentPadding:EdgeInsets.all(5),
            ),
          ),
        ],
      ),
    );
  }
}
