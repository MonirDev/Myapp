import 'package:flutter/material.dart';
import 'package:myApp/images.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String _activeVal;
  List _country = ['US', 'BD', 'IND', 'UK', 'AUS'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              bnbHeight: size.height * 0.06,
              items: <SCBottomBarItem>[
                SCBottomBarItem(icon: Icons.home, onPressed: () {}),
                SCBottomBarItem(icon: Icons.account_balance, onPressed: () {}),
              ],
              circleItems: <SCItem>[
                SCItem(icon: Icon(Icons.home), onPressed: () {}),
                SCItem(icon: Icon(Icons.favorite), onPressed: () {}),
                SCItem(icon: Icon(Icons.home), onPressed: () {}),
              ]),
          child: Container(
            child: Column(
              children: [
                ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    height: size.height * 0.2,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color(0xFF2A018B),
                                Color(0xFF561287),
                                Color(0xFFA33584),
                                Color(0xFFD76B81),
                              ])),
                        ),
                        Positioned(
                            top: 35,
                            left: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Create New Package',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.42,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: size.height * 0.14,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Choose Product',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 6,
                                      offset: Offset(0, 6),
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: TextField(
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.arrow_back_ios),
                                      hintStyle: (TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                      hintText: 'Choose Product Type',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                      Container(
                          height: size.height * 0.14,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Mobile Number',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 6,
                                      offset: Offset(0, 6),
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: TextField(
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.phone),
                                      hintStyle: (TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                      hintText: 'Enter Mobile Number',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                      Container(
                          height: size.height * 0.14,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Location',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: size.width * 0.35 - 25,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: Offset(0, 6),
                                            )
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: DropdownButton(
                                            value: _activeVal,
                                            onChanged: (value) {
                                              setState(() {
                                                _activeVal = value;
                                              });
                                            },
                                            items: _country.map((value) {
                                              return DropdownMenuItem(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: size.width * 0.65 - 25,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 6,
                                              offset: Offset(0, 6),
                                            )
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: TextField(
                                            textAlign: TextAlign.left,
                                            decoration: InputDecoration(
                                              suffixIcon:
                                                  Icon(Icons.location_on),
                                              hintStyle: (TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                              hintText: 'Address',
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text(
                            'Delivery Type',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.18 - 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.blue[50]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.ic_ex,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.blue[50]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.ic_ex,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Office',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.blue[50]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.ic_ex,
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Others',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          height: 50,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFF9E80)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 55);
    path.quadraticBezierTo(30, size.height - 80, 90, size.height - 52);
    path.quadraticBezierTo(
        size.width / 2 + 10, size.height, size.width - 50, size.height - 32);
    path.quadraticBezierTo(
        size.width - 10, size.height - 40, size.width, size.height - 10);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
