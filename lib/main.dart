import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/products.dart';
import 'package:flutter_application_1/topbrands.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  final _imagepaths = [
    'assets/women.jpg',
    'assets/men.jpg',
    'assets/kids.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FashionHub'),
          backgroundColor: Colors.cyan,
          
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_bag,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('Muskan Jain'),
                accountEmail: Text('muskanjain@gmail.com'),
                currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 50.0,
                  ),
                )),
                decoration: new BoxDecoration(color: Colors.cyan),
              ),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(Icons.home, color: Colors.cyan),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person, color: Colors.cyan),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket, color: Colors.cyan),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('categories'),
                    leading: Icon(Icons.dashboard, color: Colors.cyan),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('favourites'),
                    leading: Icon(Icons.favorite, color: Colors.cyan),
                  )),
              Divider(),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(Icons.settings, color: Colors.black),
                  )),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.help, color: Colors.black),
                  )),
              Divider(),
              InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Logout'),
                    leading: Icon(Icons.backspace, color: Colors.black),
                  ))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                  options: CarouselOptions(autoPlay: true, height: 200.0),
                  items: _imagepaths.map((imagepath) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                      child: Image.asset(imagepath),
                    );
                  }).toList()),
              new Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    'Categories',
                    style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/clothing.jpg'),
                          iconSize: 60,
                        ),
                        Text('Clothing'),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/footwear.jpg'),
                          iconSize: 60,
                        ),
                        Text('Footwear'),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/beauty.png'),
                          iconSize: 60,
                        ),
                        Text('Beauty'),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/accesories.png'),
                          iconSize: 60,
                        ),
                        Text('Accessories'),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/jwellery.png'),
                          iconSize: 60,
                        ),
                        Text('Jewellery'),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/bags.png'),
                          iconSize: 60,
                        ),
                        Text('Bags'),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                  ],
                ),
                scrollDirection: Axis.horizontal,
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    'Top Deals',
                    style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 300.0,
                child: Products(),
                
              ),
              new Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    'Top Brands',
                    style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 300.0,
                width: 350.0,
                child: Topbrands(),
                
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    'Recent Products',
                    style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 150.0,
                width: 350.0,
                child: Text("Oops!!No recent products"),
                
              ),
            ],
          ),
        )
        );
  }
}
