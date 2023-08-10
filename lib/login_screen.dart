import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_shop/Items.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      //appBar: AppBar(
      //centerTitle: true,
      //automaticallyImplyLeading: false,
      //),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/Login.png")),
            Text(
              "Login Please",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.alternate_email,
                    color: Colors.black,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.black)),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock_open,
                    color: Colors.black,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black)),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.height,
                    color: Colors.black,
                  ),
                  hintText: "Age",
                  hintStyle: TextStyle(color: Colors.black)),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: usernameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.black,
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.black)),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString("email", emailController.text.toString());
                sp.setString("age", ageController.text.toString());
                sp.setString("username", usernameController.text.toString());
                sp.setBool("isLogin", true);

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Items()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                    color: Colors.black,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text('Login', style: TextStyle(color: Colors.white)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
