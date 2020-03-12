import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtMobileNo = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain,
                  height: 100,
                ),
                Text(
                  "Ecommerce",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    fontSize: 22,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: wid * 0.15)),
                TextFormField(
                  controller: txtMobileNo,
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 0, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 0, color: Colors.white),
                    ),
                    counterText: "",
                    filled: true,
                    hintText: 'Enter Mobile',
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 10,
                      top: 18,
                      bottom: 18,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                ),
                Padding(padding: EdgeInsets.only(top: wid * 0.1)),
                Container(
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(top: heigh * 0.03),
                  height: 50,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Color.fromRGBO(243, 101, 35, 1),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/Dashboard");
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: wid * 0.03)),
                Container(
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(top: heigh * 0.013),
                  height: 50,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(243, 101, 35, 1)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/SignUp");
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color.fromRGBO(243, 101, 35, 1),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: wid * 0.05)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("----------   "),
                    Text(
                      "Social login",
                      style: TextStyle(letterSpacing: 0.6),
                    ),
                    Text("   ----------"),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: wid * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      color: Colors.red,
                      minWidth: wid * 0.3,
                      height: 42,
                      onPressed: () {
                        //_signin(context)==null?pr.hide():null;
                      },
                      child: Image.asset(
                        "assets/gps.png",
                        height: 30,
                        width: 30,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: wid * 0.03, right: wid * 0.03)),
                    MaterialButton(
                      height: 42,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      color: Colors.blueAccent,
                      minWidth: wid * 0.3,
                      onPressed: () {
                        //_loginwithFB()
                      },
                      child: Image.asset(
                        "assets/fb.png",
                        height: 22,
                        width: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
