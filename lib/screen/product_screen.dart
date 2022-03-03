import 'package:flutter/material.dart';
import 'package:fruit_ui/model/list_item.dart';

class ProductScreen extends StatelessWidget {
  final ListItem item;
  ProductScreen({this.item});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(int.parse(item.color))),
      home: Scaffold(
        backgroundColor: Color(int.parse(item.color)),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height < 600 ? null : MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom - 56,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
              Container(
                height: 530.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        item.name,
                        style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Center(
                      child: Hero(
                        tag: item.name,
                        child: Image(
                          image: AssetImage("assets/fruits/" + item.image),
                          height: 300.0,
                          width: 300.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      child: Text(
                        "Description",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: Text(
                        item.longDescription,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 60.0,
                  child: Stack(children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 60.0,
                        width: 120.0,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0))),
                        child: Center(
                          child: Text(
                            "يلا بقي اضحكي كده",
                            style: TextStyle(color: Color(int.parse(item.color)), fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                        ),
                      ),
                    )
                  ]))
            ]),
          ),
        ),
      ),
    );
  }
}
