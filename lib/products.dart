import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      "name": "T-Shirt",
      "picture": "assets/tshirt.jpg",
      "oldprice":150,
      "price": 80,
    },
    {
      "name": "Plazo",
      "picture": "assets/plazo.jpg",
      "oldprice": 100,
      "price": 80,
    },
    {
      "name": "Shoes",
      "picture": "assets/shoes.jpg",
      "oldprice":150,
      "price": 80,
    },
    {
      "name": "Handbag",
      "picture": "assets/handbag.jpg",
      "oldprice": 100,
      "price": 80,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['oldprice'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

// ignore: camel_case_types
class Single_prod extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final prod_name;
  // ignore: non_constant_identifier_names
  final prod_picture;
  // ignore: non_constant_identifier_names
  final prod_oldprice;
  // ignore: non_constant_identifier_names
  final prod_price;
  Single_prod({
    // ignore: non_constant_identifier_names
    this.prod_name,
    // ignore: non_constant_identifier_names
    this.prod_picture,
    // ignore: non_constant_identifier_names
    this.prod_oldprice,
    // ignore: non_constant_identifier_names
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Hero(tag: prod_name,
      child: Material(
        child: InkWell(
          onTap: (){} ,
          child: GridTile(
            child: Image.asset(prod_picture,fit:BoxFit.cover),
            
          footer:Container(
            color: Colors.white70,
            child: ListTile(
              selectedTileColor: Colors.cyan,
              horizontalTitleGap: 1.0,
              leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text("\$$prod_price",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
              subtitle: Text("\$$prod_oldprice",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough),
                ),
                onTap: (){},
                
                trailing: Row(   
                  mainAxisSize: MainAxisSize.min,       
            children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border
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
