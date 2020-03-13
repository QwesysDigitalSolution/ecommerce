import 'dart:io';

import 'package:ecommerce/Common/ClassList.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Common/Constants.dart' as cnst;

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  TextEditingController txtName = new TextEditingController();
  TextEditingController txtMobile = new TextEditingController();
  TextEditingController txtAdharCard = new TextEditingController();
  TextEditingController txtDrivingLicence = new TextEditingController();
  TextEditingController txtJobTitle = new TextEditingController();
  TextEditingController txtCmpName = new TextEditingController();

  File _imageUserPhoto;
  File _imageCmpLogo;
  bool stateLoading = false, cityLoading = false;


  List<stateClass> _stateList = [];
  stateClass _stateClass;

  List<cityClass> _cityList = [];
  cityClass _cityClass;

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
                          top: 5, left: 10, right: 10, bottom: heigh * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 0.5,
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13, bottom: 5),
                                  child: Text(
                                    "Residence Address",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          //if (_stateList.length == 0) _getStates();
                                        },
                                        child: Center(
                                          child: stateLoading
                                              ? CircularProgressIndicator()
                                              : SizedBox(
                                            height: 50,
                                            child: InputDecorator(
                                              decoration: new InputDecoration(
                                                  contentPadding: EdgeInsets.symmetric(
                                                      horizontal: 10, vertical: 5),
                                                  fillColor: Colors.white,
                                                  border: new OutlineInputBorder(
                                                    borderRadius:
                                                    new BorderRadius.circular(0),
                                                  )),
                                              child: DropdownButtonHideUnderline(
                                                  child: DropdownButton<stateClass>(
                                                    hint: _stateList.length > 0
                                                        ? Text(
                                                      "Select Your State",
                                                      style: TextStyle(
                                                        fontFamily: "Poppins",
                                                      ),
                                                    )
                                                        : Text(
                                                      "Select Your State",
                                                      style: TextStyle(
                                                        fontFamily: "Poppins",
                                                      ),
                                                    ),
                                                    value: _stateClass,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        //_getCity(val.id);
                                                        _stateClass = val;
                                                      });
                                                    },
                                                    items:
                                                    _stateList.map((stateClass Source) {
                                                      return DropdownMenuItem<stateClass>(
                                                        value: Source,
                                                        child: Text(
                                                          "${Source.name}",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontFamily: "Poppins",
                                                              fontSize: 14),
                                                        ),
                                                      );
                                                    }).toList(),
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10)),
                                      Center(
                                        child: cityLoading
                                            ? CircularProgressIndicator()
                                            : SizedBox(
                                          height: 50,
                                          child: InputDecorator(
                                            decoration: new InputDecoration(
                                                contentPadding: EdgeInsets.symmetric(
                                                    horizontal: 10, vertical: 5),
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(0),
                                                )),
                                            child: DropdownButtonHideUnderline(
                                                child: DropdownButton<cityClass>(
                                                  hint: _cityList.length > 0
                                                      ? Text(
                                                    "Select District",
                                                    style: TextStyle(),
                                                  )
                                                      : Text(
                                                    "Select District",
                                                    style: TextStyle(),
                                                  ),
                                                  value: _cityClass,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      _cityClass = val;
                                                    });
                                                  },
                                                  items: _cityList.map((cityClass Source) {
                                                    return DropdownMenuItem<cityClass>(
                                                      value: Source,
                                                      child: Text(
                                                        "${Source.name}",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: "Poppins",
                                                            fontSize: 14),
                                                      ),
                                                    );
                                                  }).toList(),
                                                )),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10)),
                                      Center(
                                        child: cityLoading
                                            ? CircularProgressIndicator()
                                            : SizedBox(
                                          height: 50,
                                          child: InputDecorator(
                                            decoration: new InputDecoration(
                                                contentPadding: EdgeInsets.symmetric(
                                                    horizontal: 10, vertical: 5),
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(0),
                                                )),
                                            child: DropdownButtonHideUnderline(
                                                child: DropdownButton<cityClass>(
                                                  hint: _cityList.length > 0
                                                      ? Text(
                                                    "Select Taluka",
                                                    style: TextStyle(),
                                                  )
                                                      : Text(
                                                    "Select Taluka",
                                                    style: TextStyle(),
                                                  ),
                                                  value: _cityClass,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      _cityClass = val;
                                                    });
                                                  },
                                                  items: _cityList.map((cityClass Source) {
                                                    return DropdownMenuItem<cityClass>(
                                                      value: Source,
                                                      child: Text(
                                                        "${Source.name}",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: "Poppins",
                                                            fontSize: 14),
                                                      ),
                                                    );
                                                  }).toList(),
                                                )),
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: txtName,
                                        cursorColor: Theme.of(context).cursorColor,
                                        decoration: InputDecoration(
                                          hintText: 'Enter Address',
                                          labelText: "Address",
                                          contentPadding: EdgeInsets.only(
                                            left: 20,
                                            right: 10,
                                            top: 18,
                                            bottom: 5,
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 2,
                                        maxLines: 5,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 0.5,
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13, bottom: 5),
                                  child: Text(
                                    "Permanent / village Address",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          //if (_stateList.length == 0) _getStates();
                                        },
                                        child: Center(
                                          child: stateLoading
                                              ? CircularProgressIndicator()
                                              : SizedBox(
                                            height: 50,
                                            child: InputDecorator(
                                              decoration: new InputDecoration(
                                                  contentPadding: EdgeInsets.symmetric(
                                                      horizontal: 10, vertical: 5),
                                                  fillColor: Colors.white,
                                                  border: new OutlineInputBorder(
                                                    borderRadius:
                                                    new BorderRadius.circular(0),
                                                  )),
                                              child: DropdownButtonHideUnderline(
                                                  child: DropdownButton<stateClass>(
                                                    hint: _stateList.length > 0
                                                        ? Text(
                                                      "Select Your State",
                                                      style: TextStyle(
                                                        fontFamily: "Poppins",
                                                      ),
                                                    )
                                                        : Text(
                                                      "Select Your State",
                                                      style: TextStyle(
                                                        fontFamily: "Poppins",
                                                      ),
                                                    ),
                                                    value: _stateClass,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        //_getCity(val.id);
                                                        _stateClass = val;
                                                      });
                                                    },
                                                    items:
                                                    _stateList.map((stateClass Source) {
                                                      return DropdownMenuItem<stateClass>(
                                                        value: Source,
                                                        child: Text(
                                                          "${Source.name}",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontFamily: "Poppins",
                                                              fontSize: 14),
                                                        ),
                                                      );
                                                    }).toList(),
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10)),
                                      Center(
                                        child: cityLoading
                                            ? CircularProgressIndicator()
                                            : SizedBox(
                                          height: 50,
                                          child: InputDecorator(
                                            decoration: new InputDecoration(
                                                contentPadding: EdgeInsets.symmetric(
                                                    horizontal: 10, vertical: 5),
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(0),
                                                )),
                                            child: DropdownButtonHideUnderline(
                                                child: DropdownButton<cityClass>(
                                                  hint: _cityList.length > 0
                                                      ? Text(
                                                    "Select District",
                                                    style: TextStyle(),
                                                  )
                                                      : Text(
                                                    "Select District",
                                                    style: TextStyle(),
                                                  ),
                                                  value: _cityClass,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      _cityClass = val;
                                                    });
                                                  },
                                                  items: _cityList.map((cityClass Source) {
                                                    return DropdownMenuItem<cityClass>(
                                                      value: Source,
                                                      child: Text(
                                                        "${Source.name}",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: "Poppins",
                                                            fontSize: 14),
                                                      ),
                                                    );
                                                  }).toList(),
                                                )),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10)),
                                      Center(
                                        child: cityLoading
                                            ? CircularProgressIndicator()
                                            : SizedBox(
                                          height: 50,
                                          child: InputDecorator(
                                            decoration: new InputDecoration(
                                                contentPadding: EdgeInsets.symmetric(
                                                    horizontal: 10, vertical: 5),
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(0),
                                                )),
                                            child: DropdownButtonHideUnderline(
                                                child: DropdownButton<cityClass>(
                                                  hint: _cityList.length > 0
                                                      ? Text(
                                                    "Select Taluka",
                                                    style: TextStyle(),
                                                  )
                                                      : Text(
                                                    "Select Taluka",
                                                    style: TextStyle(),
                                                  ),
                                                  value: _cityClass,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      _cityClass = val;
                                                    });
                                                  },
                                                  items: _cityList.map((cityClass Source) {
                                                    return DropdownMenuItem<cityClass>(
                                                      value: Source,
                                                      child: Text(
                                                        "${Source.name}",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: "Poppins",
                                                            fontSize: 14),
                                                      ),
                                                    );
                                                  }).toList(),
                                                )),
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: txtName,
                                        cursorColor: Theme.of(context).cursorColor,
                                        decoration: InputDecoration(
                                          hintText: 'Enter Address',
                                          labelText: "Address",
                                          contentPadding: EdgeInsets.only(
                                            left: 20,
                                            right: 10,
                                            top: 18,
                                            bottom: 5,
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 2,
                                        maxLines: 5,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
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
                                    context, "/GetVisitingCardDetail");
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
