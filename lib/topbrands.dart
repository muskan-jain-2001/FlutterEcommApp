import 'package:flutter/material.dart';

class Topbrands extends StatefulWidget {
  @override
  _TopbrandsState createState() => _TopbrandsState();
}

class _TopbrandsState extends State<Topbrands> {
  // ignore: non_constant_identifier_names
  var brand_list = [
    {
      "name": "Bata",
      "picture": "assets/bata.jpg",
    },
    {
      "name": "Lavie",
      "picture": "assets/lavie.jpg",
    },
    {
      "name": "Nike",
      "picture": "assets/nike.jpg",
    }
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: brand_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return Brand_prod(
            brand_name: brand_list[index]['name'],
            brand_picture: brand_list[index]['picture'],
          );
        });
  }
}

// ignore: camel_case_types
class Brand_prod extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final brand_name;
  // ignore: non_constant_identifier_names
  final brand_picture;

  Brand_prod({
    // ignore: non_constant_identifier_names
    this.brand_name,
    // ignore: non_constant_identifier_names
    this.brand_picture,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: brand_name,
      child: Material(
        child: InkWell(
          onTap: (){} ,
          child: GridTile(
            child: Image.asset(brand_picture,fit:BoxFit.contain),
            
          footer:Container(
            color: Colors.white70,
            child: ListTile(
              selectedTileColor: Colors.cyan,
              contentPadding: EdgeInsets.all(0),
              horizontalTitleGap: 1.0,
              title: Text("Explore More",style: TextStyle(fontWeight: FontWeight.bold),
              ),
              
                
                trailing: Row(   
                  mainAxisSize: MainAxisSize.min,       
            children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.explore_sharp
              ),
              onPressed: () {},
            ),
           
          ]),

            ),
          ) ,
          ),
        )
      ,),
      ),
    );
  }
}
