
import 'package:e_voucher/Drawar/page/favourites_page.dart';
import 'package:e_voucher/Drawar/page/people_page.dart';
import 'package:e_voucher/Login/screen/login.dart';
import 'package:e_voucher/ActionPage/logo.dart';
import 'package:e_voucher/Splash%20Sreen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared_text.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Ahmed Gayed';
    final email = 'Ahmed@gayed.com';
    // final urlImage =
    //     'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color:  Colors.white,
        child: ListView(
          children: <Widget>[
            buildHeader(
              // urlImage: urlImage,
              name: SharedText.userName,
              email: SharedText.branchName,

            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),

                  const SizedBox(height: 24),
                  Divider(color: Colors.blue),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Sign Out',

                    icon: Icons.assignment_ind_rounded ,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>loginn()));
                      },

                  ),
                  Divider(color: Colors.blue),
                  ListTile(
                    leading: Icon(Icons.logout_rounded,color: Theme.of(context).accentColor,),
                    title: Text('Logout',style: TextStyle(color: Theme.of(context).accentColor),),
                    onTap: () {
                      SystemNavigator.pop();
                    },
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    // required String urlImage,
    required String name,
    required String email,

  }) =>
      Container(
        padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(radius: 35
                
            ),

            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    name,
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  email,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            const Spacer(),
            // const CircleAvatar(
            //   radius: 24,
            //   backgroundColor: Color.fromRGBO(30, 60, 168, 1),
            //   child: Icon(Icons.verified, color: Colors.white),
            // )
          ],
        ),
      );

  // Widget buildSearchField() {
  //   const color = Colors.white;
  //
  //   return TextField(
  //     style: const TextStyle(color: color),
  //     decoration: InputDecoration(
  //       contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  //       hintText: 'Search',
  //       hintStyle: const TextStyle(color: color),
  //       prefixIcon: const Icon(Icons.search, color: color),
  //       filled: true,
  //       fillColor: Colors.white12,
  //       enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5),
  //         borderSide: BorderSide(color: color.withOpacity(0.7)),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5),
  //         borderSide: BorderSide(color: color.withOpacity(0.7)),
  //       ),
  //     ),
  //   );
  // }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onPressed

  }) {
    final color = Colors.blue;
    final hoverColor = Colors.blue;

    return ListTile(
      leading: Icon(icon, color: color,size: 30,),
      title: Text(text, style: TextStyle(color: color,fontSize: 20)),
      hoverColor: hoverColor,
      onTap: onPressed,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavouritesPage(),
        ));
        break;
    }
  }

}
