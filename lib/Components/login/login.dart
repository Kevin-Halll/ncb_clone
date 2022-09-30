import 'package:flutter/material.dart';
import 'package:ncb_clone/Components/login/loginForm.dart';
// import 'clipPaths.dart';

class NcbLogin extends StatefulWidget {
  const NcbLogin({Key? key}) : super(key: key);

  @override
  State<NcbLogin> createState() => _NcbLoginState();
}

class _NcbLoginState extends State<NcbLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _password_Hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: const AssetImage(
              'assets/ja60ncb.png',
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          //////// ELLIPSE IMAGE  ////////
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.asset('assets/ellipse.png'),
              ),
            ],
          ),
          //////// FOOTER LINKS ///////
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Activat Your Card  ',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Column(
                      children: [
                        // Icon(Icons.currency_exchange_sharp, color: Colors.amber,),
                        Container(
                            decoration: BoxDecoration(
                                border: Border(
                              // top: BorderSide(color: Color(0xFFFFFFFF)),
                              left: BorderSide(color: Color(0xFFFFFFFF)),
                              right: BorderSide(color: Color(0xFFFFFFFF)),
                              // bottom: BorderSide(),
                            )),
                            child: Text(
                              '  Quick Send  ',
                              style: TextStyle(
                                  color: Colors.amberAccent, fontSize: 12),
                            )),
                      ],
                    ),
                    Text(
                      '  More...',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Transform.rotate(
              //   angle: 120,
              //   child: Container(
              //     margin: EdgeInsets.fromLTRB(100, 400, 0, 0),
              //     width: 55,
              //     height: 50,
              //     color: Colors.amber,
              //   ),
              // ),

              ////////// SIGN IN FORM  ////////////////////
              Center(
                child: Container(
                  width: 345,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Color.fromRGBO(255, 255, 255, 0.95),
                          ])
                      // color: Color.fromRGBO(255, 255, 255, 0.91)
                      ),
                  child: LoginForm(),
                ),
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
