import 'package:flutter/material.dart';
import 'package:organic/db.dart';
import 'package:organic/itemscard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 80,
                  color: Color.fromARGB(255, 10, 116, 65),
                  child: Row(
                    children: [
                      Icon(Icons.sort),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: Colors.amber,
                        ),
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              prefixIconConstraints: BoxConstraints(
                                minWidth: 50,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 20,
                              ),
                              isDense: true,
                              fillColor: Color.fromARGB(145, 14, 166, 92),
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  // color: Colors.lightBlue,
                  padding: EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://5.imimg.com/data5/VF/CT/MY-49857352/organic-vegetables.png"),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
                Container(
                  height: 200,
                  // color: Colors.lightGreen,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("category"),
                            Text(
                              "view all",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrBI9mTbfx8DyaalFAEBZhiOYxHQsOaWs3sg&usqp=CAU",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  "https://www.liveeatlearn.com/wp-content/uploads/2023/08/List-Of-Veggies.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  "https://thedietplate.com/cdn/shop/articles/What_is_Dairy.png?v=1704224579&width=1024",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  "https://img.freepik.com/free-photo/flat-lay-healthy-immunity-boosting-foods_23-2149211601.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 300,
                    // color: Colors.lightGreenAccent,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Best Seller"), Text("View all")],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  Db123.itemslist.length,
                                  (index) => ItemsCard(
                                    Pic: Db123.itemslist[index]["pic"],
                                    Name: Db123.itemslist[index]["name"],
                                    Price: Db123.itemslist[index]["price"],
                                    Pricecut: Db123.itemslist[index]
                                        ["pricecut"],
                                    Disc: Db123.itemslist[index]["disc"],

                                    // perks: Hirist_db.CompaniesTab[index]["perks"],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 80,
                  // color: Colors.lightGreen.shade800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Featured Deals"),
                      Text("View all"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
