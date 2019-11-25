import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Basic Mobile App"),
          actions: <Widget>[
            Icon(
              Icons.group,
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.share),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.girlsdp.com/wp-content/uploads/images/cute-and-beautiful-girls-dp-for-social-media-or-messaging-app.jpg"),
                    radius: 60.0,
                  ),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.phone),
              ),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          overlayColor: Colors.pink[800],
          overlayOpacity: 0.3,
          children: [
            SpeedDialChild(
              child: Icon(Icons.message),
              label: "Message",
              backgroundColor: Colors.orange,
              labelBackgroundColor: Colors.orange,
            ),
            SpeedDialChild(
              child: Icon(Icons.share),
              label: "Share",
              backgroundColor: Colors.red,
              labelBackgroundColor: Colors.red,
            ),
            SpeedDialChild(
              child: Icon(Icons.attach_file),
              label: "Attach file",
              backgroundColor: Colors.green,
              labelBackgroundColor: Colors.green,
            ),
            SpeedDialChild(
              child: Icon(Icons.favorite),
              label: "Favorite",
              backgroundColor: Colors.blue,
              labelBackgroundColor: Colors.blue,
            ),
            SpeedDialChild(
              child: Icon(Icons.person),
              label: "Person",
              backgroundColor: Colors.pink,
              labelBackgroundColor: Colors.pink,
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network(
              "https://bestprofilepix.com/wp-content/uploads/2014/03/cool-awesome-stylish-cute-more-beautiful-girls-facebook-profile-and-display-pictures.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Image.network(
              "https://www.girlsdp.com/wp-content/uploads/images/cute-and-beautiful-girls-dp-for-social-media-or-messaging-app.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Image.network(
              "https://i.pinimg.com/474x/0a/11/b1/0a11b1652f165799f37fc606de3275cc.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Image.network(
              "https://i.pinimg.com/736x/50/74/0d/50740d034b3f3544871ebae15578b4d5.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.thumb_up,
                    color: Colors.pink,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.thumb_down,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )));
