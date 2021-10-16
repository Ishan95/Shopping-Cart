import 'package:flutter/material.dart';
import 'package:shopping_cart/constants.dart';
import 'package:shopping_cart/screens/home/components/body.dart';
import 'package:shopping_cart/screens/home/components/tabs/cart.dart';
import 'package:shopping_cart/screens/home/components/tabs/feed.dart';
import 'package:shopping_cart/screens/home/components/tabs/message.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(29),
            ),
            width: size.width * 0.5,
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search, color: kPrimaryColor),
                hintText: "item",
              ),
              onChanged: (value){},
            ),
          ),
          SizedBox(width: size.width * 0.02),
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {},
          ),
          SizedBox(width: size.width * 0.02),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Profile"),
              decoration: BoxDecoration(
                  color: Colors.blueGrey
              ),
            ),
            ListTile(
              title: Text("Edit Account"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Notification"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Feedback"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Log Out"),
              onTap: (){},
            ),
          ],
        ),
      ),
      bottomNavigationBar: Tabs(),
      body: Body(),
    );
  }
}

class Tabs extends StatefulWidget {
  const Tabs({ Key? key }) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  
  int index = 0;
  List tabs = [];

  @override
  Widget build(BuildContext context) {

    tabs.add(Cart());
    tabs.add(Feed());
    tabs.add(Message());

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i){
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
          ),
        ],
      ),    
    );
  }
}