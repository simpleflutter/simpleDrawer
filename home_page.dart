import 'package:flutter/material.dart';
import 'package:test_app/home.dart';
import 'package:test_app/profile.dart';
import 'package:test_app/setting.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget currentPage = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text('Sachin Tendulkar'),
              accountEmail: Text('saching@gmail.com'),
              currentAccountPicture: CircleAvatar(
                //backgroundImage: AssetImage('images/img1.jpg'),
                backgroundColor: Colors.white,
                child: Text(
                  'S',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/img3.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/img6.jpg'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  currentPage = Home();
                });
                Navigator.pop(context);
              },
              
            ),
            ListTile(
              leading: Icon(Icons.person),
              title:Text('Profile'),
              onTap: (){
                setState(() {
                  currentPage = Profile();
                });
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Seeting'),
              onTap: (){
                setState(() {
                  currentPage = Setting();
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: currentPage,
    );
  }
}
