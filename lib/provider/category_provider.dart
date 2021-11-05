import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopthethao/model/categoryicon.dart';
import 'package:shopthethao/model/product.dart';

class CategoryProvider with ChangeNotifier {
  List<Product> shirt = [];
  late Product shirtData;
  List<Product> dress = [];
  late Product dressData;
  List<Product> shoes = [];
  late Product shoesData;
  List<Product> pant = [];
  late Product pantData;
  List<Product> tie = [];
  late Product tieData;
  List<CategoryIcon> dressIcon = [];
  late CategoryIcon dressiconData;

  Future<void> getDressIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot dressSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("SiNJYcU8RRVrXaLUL9v3")
        .collection("dress")
        .get();
    dressSnapShot.docs.forEach(
      (element) {
        dressiconData = CategoryIcon(image: element.data()["image"]);
        newList.add(dressiconData);
      },
    );
    dressIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getDressIcon {
    return dressIcon;
  }

  List<CategoryIcon> shirtIcon = [];
  late CategoryIcon shirticonData;
  Future<void> getShirtIcon() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("SiNJYcU8RRVrXaLUL9v3")
        .collection("shirt")
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirticonData = CategoryIcon(image: element.data()["image"]);
        newList.add(shirticonData);
      },
    );
    shirtIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getShirtIconData {
    return shirtIcon;
  }

  List<CategoryIcon> shoesIcon = [];
  late CategoryIcon shoesiconData;
  Future<void> getshoesIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot shoesSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("SiNJYcU8RRVrXaLUL9v3")
        .collection("shoe")
        .get();
    shoesSnapShot.docs.forEach(
      (element) {
        shoesiconData = CategoryIcon(image: element.data()["image"]);
        newList.add(shoesiconData);
      },
    );
    shoesIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getShoeIcon {
    return shoesIcon;
  }

  List<CategoryIcon> pantIcon = [];
  late CategoryIcon panticonData;
  Future<void> getPantIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot pantSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("SiNJYcU8RRVrXaLUL9v3")
        .collection("pant")
        .get();
    pantSnapShot.docs.forEach(
      (element) {
        panticonData = CategoryIcon(image: element.data()["image"]);
        newList.add(panticonData);
      },
    );
    pantIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getPantIcon {
    return pantIcon;
  }

  List<CategoryIcon> tieIcon = [];
  late CategoryIcon tieIconData;
  Future<void> getTieIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot tieSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("SiNJYcU8RRVrXaLUL9v3")
        .collection("tie")
        .get();
    tieSnapShot.docs.forEach(
      (element) {
        tieIconData = CategoryIcon(image: element.data()["image"]);
        newList.add(tieIconData);
      },
    );
    tieIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getTieIcon {
    return tieIcon;
  }

  Future<void> getShirtData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("hKyfiWV7zSLen6HYJgVf")
        .collection("shirt")
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    shirt = newList;
    notifyListeners();
  }

  List<Product> get getShirtList {
    return shirt;
  }

  Future<void> getDressData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("hKyfiWV7zSLen6HYJgVf")
        .collection("dress")
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    dress = newList;
    notifyListeners();
  }

  List<Product> get getDressList {
    return dress;
  }

  Future<void> getShoesData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("hKyfiWV7zSLen6HYJgVf")
        .collection("shoes")
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    shoes = newList;
    notifyListeners();
  }

  List<Product> get getshoesList {
    return shoes;
  }

  Future<void> getPantData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("hKyfiWV7zSLen6HYJgVf")
        .collection("pant")
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    pant = newList;
    notifyListeners();
  }

  List<Product> get getPantList {
    return pant;
  }

  Future<void> getTieData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("hKyfiWV7zSLen6HYJgVf")
        .collection("tie")
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    tie = newList;
    notifyListeners();
  }

  List<Product> get getTieList {
    return tie;
  }

  late List<Product> searchList;
  void getSearchList({List<Product>? list}) {
    searchList = list!;
  }

  List<Product> searchCategoryList(String query) {
    List<Product> searchShirt = searchList.where((element) {
      return element.name.toUpperCase().contains(query) ||
          element.name.toLowerCase().contains(query);
    }).toList();
    return searchShirt;
  }
}
