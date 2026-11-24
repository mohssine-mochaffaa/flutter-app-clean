import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Home Page",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue,Colors.green],begin: Alignment.topCenter,end: Alignment.bottomCenter)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/avatar.jpg"),
                    radius: 30,
                  ),

                  Text(
                    "Mohssine Mochaffaa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "mohssine.mochaffaa@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  )
                  
                ],
              )
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.indigo),
              title: Text("Covid Tracker"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 12,
              color: Colors.purpleAccent,
            ),
            ListTile(
              leading: Icon(Icons.chat,color: Colors.indigo),
              title: Text("Chat"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.indigo),
              title: Text("Profile"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.indigo),
              title: Text("Settings"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.indigo),
              title: Text("Logout"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Welcome to the home page",
        style: TextStyle(
          color: Colors.purple,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
      ),
    );
  }
}