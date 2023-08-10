import 'package:flutter/material.dart';
import 'package:shop_shop/DesiFood.dart';
import 'package:shop_shop/FastFood.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_shop/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class Items extends StatefulWidget {
  static const String id = "Items";
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  String email = '', age = '', name = '';

  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString("email") ?? '';
    age = sp.getString("age") ?? '';
    name = sp.getString("username") ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xffffffff),
          appBar: AppBar(
            title: Text("PandaShop",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.2)),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Colors.pink,
                    Colors.purple,
                    Colors.cyan
                  ])),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Mens"),
                ),
                Tab(
                  child: Text("Womens"),
                ),
                Tab(
                  child: Text("Childrens"),
                ),
              ],
            ),

            //backgroundColor: Color(0xffffb400),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage("images/Suit_1.png"),
                    ),
                  ),
                  Text(
                    "Girl Business Suit",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Baloo"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Rs. 1000",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Baloo"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage("images/Shirt1.png"),
                    ),
                  ),
                  Text(
                    "Gentlemen's Business Suit",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Baloo"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Rs. 3560",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Baloo"),
                      )
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage("images/Girl_Suit.jpg"),
                    ),
                  ),
                  Text(
                    "Girl Business Suit",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Baloo"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Rs. 1000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Baloo"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage("images/Girl_Suit.jpg"),
                    ),
                  ),
                  Text(
                    "Girl Business Suit",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Baloo"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Rs. 1000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Baloo"),
                      )
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage("images/Girl_Suit.jpg"),
                    ),
                  ),
                  Text(
                    "Girl Business Suit",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Baloo"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Rs. 1000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Baloo"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage("images/Girl_Suit.jpg"),
                    ),
                  ),
                  Text(
                    "Girl Business Suit",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Baloo"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Rs. 1000",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Baloo"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
          drawer: Drawer(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200),
                    topRight: Radius.circular(100),
                    topLeft: Radius.circular(56))),
            backgroundColor: Colors.pink[50],
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                //DrawerHeader(child: Text("Muhammad Husnain")),
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(38),
                          topRight: Radius.circular(100)),
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.deepPurple, Colors.cyan],
                        begin: Alignment.topLeft,
                      )),
                  //color: Color(0xff222222)),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/Person.png")),
                  accountName: Row(
                    children: [
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        name.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
                  accountEmail: Row(
                    children: [
                      Text(
                        '',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        email.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    }),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    onTap: () {}),
                //  Divider(
                //    color: Color(0xff4c4c4c),
                //    thickness: 1.3,
                //    indent: 7,
                //    endIndent: 7,
                //  ),

                //  ListTile(
                //      leading: Icon(Icons.eject),
                //      title: Text("Traditional Food"),
                //      onTap: () {
                //        Navigator.pushNamed(context, Traditional.id);
                //      }),
                //ListTile(
                //    leading: Icon(Icons.eject),
                //    title: Text("Fast Food"),
                //    onTap: () {
                //      Navigator.pushNamed(context, ScreenTwo.id);
                //    }),

                Divider(
                  color: Colors.black,
                  thickness: 0.2,
                  indent: 85,
                  endIndent: 85,
                ),

                InkWell(
                  onTap: () async {
                    SharedPreferences sp =
                        await SharedPreferences.getInstance();
                    sp.clear();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50)),
                          gradient: LinearGradient(colors: [
                            Colors.green,
                            Colors.cyan,
                            //Colors.amber
                          ])
                          //color: Colors.green,
                          ),
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: Text('Logout'),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
