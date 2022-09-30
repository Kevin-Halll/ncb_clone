// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ncb_clone/Components/drawer/nav_drawer.dart';

class AccountHome extends StatefulWidget {
  const AccountHome({Key? key}) : super(key: key);

  @override
  State<AccountHome> createState() => _AccountHomeState();
}

class _AccountHomeState extends State<AccountHome> {
  bool _isExpanded = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // IconButton(
              //     onPressed: () {},
              //     icon: Icon(
              //       Icons.menu,
              //       size: 35,
              //     )),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1),
                ),
              )
            ],
          ),
        ),
        drawer: NavDrawer(),
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                // bottomLeft: Radius.circular(50),
                // bottomRight: Radius.circular(50)
                bottomLeft: Radius.elliptical(
                    MediaQuery.of(context).size.width * 0.5, 30.0),
                bottomRight: Radius.elliptical(
                    MediaQuery.of(context).size.width * 0.5, 30.0),
              ),
              child: Image(
                image: const AssetImage('assets/ja60ncb.png'),
                height: 240,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                alignment: const Alignment(0, -0.75),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
              child:ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.black)
                            ),
                            child: Container(
                              width: 105,
                              height: 82,
                              // color: Colors.blueAccent,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.lightBlue[400]),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.elliptical(
                                                  MediaQuery.of(context).size.width * 0.2,
                                                  45.0),
                                              bottomRight: Radius.elliptical(
                                                  MediaQuery.of(context).size.width * 0.2,
                                                  45.0),
                                            ),
                                            child: Container(
                                              width: 150,
                                              height: 42,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.white),
                                              child: Icon(Icons.payments_outlined, color: Colors.black,),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Transfer',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          TextButton( onPressed: (){},
                            child: Container(
                              width: 105,
                              height: 82,
                              // color: Colors.blueAccent,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF053451)),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.elliptical(
                                                  MediaQuery.of(context).size.width * 0.2,
                                                  45.0),
                                              bottomRight: Radius.elliptical(
                                                  MediaQuery.of(context).size.width * 0.2,
                                                  45.0),
                                            ),
                                            child: Container(
                                              width: 150,
                                              height: 42,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.white),
                                              child: Icon(Icons.credit_score_outlined, color: Colors.black,),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Bill Pay',
                                      style: TextStyle(fontSize: 15, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          TextButton( onPressed: (){},
                            child: Container(
                              width: 105,
                              height: 82,
                              // color: Colors.blueAccent,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.elliptical(
                                                  MediaQuery.of(context).size.width * 0.2,
                                                  45.0),
                                              bottomRight: Radius.elliptical(
                                                  MediaQuery.of(context).size.width * 0.2,
                                                  45.0),
                                            ),
                                            child: Container(
                                              width: 150,
                                              height: 42,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.white),
                                              child: Icon(Icons.send_to_mobile_outlined, color: Colors.black,),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Top-Up',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                _isExpanded = !_isExpanded;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded) {
                                  return ListTile(
                                    title: Text('Bank Accounts', style: TextStyle(color: Colors.white,),),
                                  );
                                },
                                backgroundColor: Color(0xFFA8ADB8),
                                canTapOnHeader: true,
                                body: ListTile(
                                  title: TextButton( onPressed: (){},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(12),
                                      ),
                                      foregroundColor: MaterialStateProperty.all(Colors.black),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                      )
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('New Debit Card?', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Row(
                                          children: [
                                            Text('Activate Here'),
                                            SizedBox(width: 5,),
                                            Icon(Icons.arrow_forward_ios_outlined)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  subtitle: Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("SAVINGS", style: TextStyle(
                                              color: Color(0xFF041657),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                            ),
                                            ),
                                            Text("Account Balance", style: TextStyle(
                                                color: Color(0xFF041657),
                                              fontSize: 14
                                            ),)
                                          ]
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("***7666", style: TextStyle(color: Color(0xFF041657)),),
                                            Text("JMD 37,114.92", style: TextStyle(
                                              color: Color(0xFF041657),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500
                                            ),)
                                          ],
                                        ),
                                        Divider(height: 15, thickness: 1),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("ACCOUNT DETAILS", style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                            ),
                                            ),
                                            SizedBox(width: 10,),
                                            Icon(Icons.arrow_forward, color: Colors.blue, size: 20,)
                                          ],
                                        )
                                      ]
                                    ),
                                  ),
                                ),
                                isExpanded: _isExpanded,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                _isExpanded2 = !_isExpanded2;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded) {
                                  return ListTile(
                                    title: Text('Credit Cards', style: TextStyle(color: Colors.white,),),
                                  );
                                },
                                backgroundColor: Color(0xFFA8ADB8),
                                canTapOnHeader: true,
                                body: ListTile(
                                  iconColor: Colors.white,
                                  title: Text('Item 1 child'),
                                  subtitle: Icon(Icons.add_circle),
                                ),
                                isExpanded: _isExpanded2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                _isExpanded3 = !_isExpanded3;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded) {
                                  return ListTile(
                                    title: Text('Investments', style: TextStyle(color: Colors.white,),),
                                  );
                                },
                                backgroundColor: Color(0xFFA8ADB8),
                                canTapOnHeader: true,
                                body: ListTile(
                                  iconColor: Colors.white,
                                  title: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/investment.png'),
                                  ),
                                  subtitle: TextButton( onPressed: (){},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                    ),
                                    child: Text('No investment accounts present', style: TextStyle(
                                      color: Color(0xFF020C31),
                                    ),),
                                  )
                                ),
                                isExpanded: _isExpanded3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                _isExpanded4 = !_isExpanded4;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                headerBuilder: (BuildContext context, bool isExpanded) {
                                  return ListTile(
                                    title: Text('Loans', style: TextStyle(color: Colors.white,),),
                                  );
                                },
                                backgroundColor: Color(0xFFA8ADB8),
                                canTapOnHeader: true,
                                body: ListTile(
                                  iconColor: Colors.white,
                                  title: Text('Item 1 child'),
                                  subtitle: Icon(Icons.add_circle),
                                ),
                                isExpanded: _isExpanded4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFA8ADB8)
                        ),
                        child: Text("Don't see all your accounts?", style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),),
                      )
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    ]);
  }
}
