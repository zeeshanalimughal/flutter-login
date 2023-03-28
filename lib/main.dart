import 'package:flutter/material.dart';

// main.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Explore',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(color: Colors.amberAccent)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();




    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: Text("App")
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey[200],
            child: Column(

              children: [
                SizedBox(height:20),
                   Center(
                      child: Expanded(
                        flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 30.0),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                const SizedBox(height: 20,),
                                Text("Hello Again!", style: TextStyle(color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w600),),
                                const SizedBox(height: 10,),
                                Container(
                                  width: 300,
                                  height: 50,
                                  child: RichText(
                                    text: const TextSpan(text: "Welcome back, you've been missed",style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black45,
                                    )),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 60),
                                Column(
                                  children: [
                                    TextField(
                                      style: TextStyle(fontSize: 18),
                                      controller: usernameController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        hintText: 'Username',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    TextField(
                                      obscureText: true,
                                      controller: passwordController,
                                      style: TextStyle(fontSize: 18),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        hintText: 'Password',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

                                      ),
                                    ),
                                    SizedBox(height:15),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          child: Text("Recovery Passwors ?", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                                        )
                                      ],
                                    ),
                                    SizedBox(height:30),
                                    InkWell(
                                      onTap: () => print("Login"),
                                      child: Container(
                                        width: screenSize.width,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        child: Center(child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 25),)),
                                      ),
                                    ),
                                    SizedBox(height:30),
                                    Text("---  Or continue with  ---", style: TextStyle(fontSize: 17),),
                                    SizedBox(height:30),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 90,
                                            height: 70,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 2, color: Colors.white),
                                              borderRadius: BorderRadius.circular(12)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                                              child: Image.asset("assets/images/google.png",),
                                            )
                                        ),

                                        Container(
                                            width: 90,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 2, color: Colors.white),
                                                borderRadius: BorderRadius.circular(12)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                                              child: Image.asset("assets/images/apple.png",),
                                            )
                                        ),


                                        Container(
                                            width: 90,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 2, color: Colors.white),
                                                borderRadius: BorderRadius.circular(12)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                                              child: Image.asset("assets/images/facebook.png",),
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 50,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("Not a member ?", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                                        SizedBox(width: 10,),
                                        InkWell(
                                          onTap: () => print("Register"),
                                          child: Text("Register Now", style: TextStyle(fontSize: 17, color: Colors.blueAccent, fontWeight: FontWeight.w500),),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                      ),
                  ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
