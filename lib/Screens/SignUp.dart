import 'dart:io';
import 'package:ecommerce/Common/Constants.dart' as cnst;
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController txtName = new TextEditingController();
  TextEditingController txtMobile = new TextEditingController();
  TextEditingController txtAdharCard = new TextEditingController();
  TextEditingController txtDrivingLicence = new TextEditingController();
  TextEditingController txtJobTitle = new TextEditingController();
  TextEditingController txtCmpName = new TextEditingController();

  File _imageUserPhoto;
  File _imageCmpLogo;

  @override
  Widget build(BuildContext context) {
    double heigh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () {
            Navigator.pushReplacementNamed(context, "/Login");
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/Login");
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 15, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.close,
                          color: Color.fromRGBO(243, 101, 35, 1),
                          size: 25,
                        ),
                        /*ClipOval(
                            child: Image.asset(
                              "images/bg.jpeg",
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),*/
                        Center(child: Text("Logo")),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: heigh * 0.15),
                  //color: Colors.amber,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 20, right: 20, bottom: heigh * 0.15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            controller: txtName,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              labelText: "Name",
                              contentPadding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 18,
                                bottom: 18,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: txtMobile,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              counterText: "",
                              hintText: 'Enter Mobile No',
                              labelText: "Mobile No",
                              contentPadding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 18,
                                bottom: 18,
                              ),
                            ),
                            maxLength: 10,
                            keyboardType: TextInputType.phone,
                          ),
                          TextFormField(
                            controller: txtAdharCard,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter AdharCard No',
                              labelText: "AdharCard No",
                              contentPadding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 18,
                                bottom: 18,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          /*TextFormField(
                            controller: txtJobTitle,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Job Title',
                              labelText: "Job Title",
                              prefixIcon: Icon(
                                Icons.title,
                                color: app_primary_material_color,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: txtCmpName,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Company Name',
                              labelText: "Company Name",
                              prefixIcon: Icon(
                                Icons.business,
                                color: app_primary_material_color,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),*/
                          TextFormField(
                            controller: txtDrivingLicence,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Driving Licence',
                              labelText: "Driving Licence",
                              contentPadding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 18,
                                bottom: 18,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          Card(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
                            shape: RoundedRectangleBorder(
                              //side: BorderSide(color: cnst.appcolor)),
                              side: BorderSide(
                                  width: 0.50,
                                  color: cnst.app_primary_material_color),
                              borderRadius: BorderRadius.circular(
                                0.0,
                              ),
                            ),
                            //margin: EdgeInsets.only(left: 20,right: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  _imageUserPhoto == null
                                      ? FadeInImage.assetNetwork(
                                          placeholder: 'images/logo.png',
                                          //image: UserData[0]["Photo"],
                                          image: "",
                                          width: 250.0,
                                          height: 250.0,
                                          fit: BoxFit.fill,
                                        )
                                      : Image.file(
                                          File(_imageUserPhoto.path),
                                          width: 250.0,
                                          height: 250.0,
                                          fit: BoxFit.cover,
                                        ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 10),
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                    ),
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(0.0),
                                      ),
                                      color: cnst.app_primary_material_color,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                      onPressed: () {
                                        //_profileImagePopup(context);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.camera_alt,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Upload Adhar Card Photo",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50,
                                  color: cnst.app_primary_material_color),
                              borderRadius: BorderRadius.circular(
                                0.0,
                              ),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  _imageCmpLogo == null
                                      ? FadeInImage.assetNetwork(
                                          placeholder: 'images/logo.png',
                                          //image: UserData[0]["CompanyLogo"],
                                          image: "",
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 250.0,
                                          fit: BoxFit.fill)
                                      : Image.file(File(_imageCmpLogo.path),
                                          height: 250.0,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          fit: BoxFit.fill),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 0),
                                    height: 48,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(0))),
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(0.0)),
                                      color: cnst.app_primary_material_color,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                      onPressed: () {
                                        //_profileImagePopup1(context);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(Icons.camera_alt,
                                              color: Colors.white),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Upload Driving Licence",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: heigh * 0.03),
                            height: heigh > 550.0 ? heigh * .062 : heigh * .055,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                              color: Color.fromRGBO(243, 101, 35, 1),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, "/SignUp1");
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/Login');
                    },
                    child: Container(
                      color: Colors.deepOrange[200],
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already Have an Account ? ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  letterSpacing: 0.5),
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
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
