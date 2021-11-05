
import '../provider/category_provider.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopthethao/model/product.dart';
import 'package:shopthethao/provider/category_provider.dart';
import 'package:shopthethao/provider/product_provider.dart';
import 'package:shopthethao/screens/detailscreen.dart';
import 'package:shopthethao/screens/homepage.dart';
import 'package:shopthethao/screens/search_category.dart';
import 'package:shopthethao/screens/search_product.dart';
import 'package:shopthethao/widgets/notification_button.dart';
import 'package:shopthethao/widgets/singeproduct.dart';

class ListProduct extends StatefulWidget {
 late final String name;
late  bool? isCategory = true;
 late final List<Product> snapShot;
  ListProduct({required this.name, this.isCategory, required this.snapShot,});

  @override
  _ListProductState createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  Widget _buildTopName() {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildMyGridView(context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Container(
      height: 700,
      child: GridView.count(
        crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
        childAspectRatio: orientation == Orientation.portrait ? 0.8 : 0.9,
        scrollDirection: Axis.vertical,
        children: widget.snapShot
            .map(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => DetailScreen(
                            image: e.image,
                            name: e.name,
                            price: e.price,
                          )));
                },
                child: SingleProduct(
                  price: e.price,
                  image: e.image,
                  name: e.name,
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  late CategoryProvider categoryProvider;

  late ProductProvider productProvider;

  Widget _buildSearchBar(context) {
    return widget.isCategory == true
        ? IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              categoryProvider.getSearchList(list: widget.snapShot);
              showSearch(context: context, delegate: SearchCategory());
            },
          )
        : IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              productProvider.getSearchList(list: widget.snapShot);
              showSearch(context: context, delegate: SearchProduct());
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    categoryProvider = Provider.of<CategoryProvider>(context);
    productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => HomePage(),
                ),
              );
            }),
        actions: <Widget>[
          _buildSearchBar(context),
          NotificationButton(),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            _buildTopName(),
            SizedBox(
              height: 10,
            ),
            _buildMyGridView(context),
          ],
        ),
      ),
    );
  }
}
