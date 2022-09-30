import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _password_Hidden = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //////  PASSWORD INPUT FIELD  ////////
                  TextField(
                    obscureText: _password_Hidden,
                    decoration: InputDecoration(
                      // filled: true,
                      // fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(0.0),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.grey, fontSize: 14),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _password_Hidden =
                                !_password_Hidden;
                              });
                            },
                            icon: Icon(
                              _password_Hidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey[300],
                            )
                        )
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Checkbox(value: _isChecked, onChanged: (bool? value){
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.all(Color(0xFF0A335A)),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          Text(
                            ' Remember Me',
                            style: TextStyle(
                                color: Color(0xFF0A335A),
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0xFF0A335A),
                            fontSize: 12,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('FINGERPRINT LOGIN'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.fingerprint)
                          ],
                        ),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all(
                                Color(0xFF0A335A)),
                            backgroundColor:
                            MaterialStateProperty.all(
                                Color(0xFFFFDD23)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.fromLTRB(
                                    20, 10, 20, 10)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(30.0),
                                  // side: BorderSide(color: Colors.red)
                                ))),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('SIGN UP'),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.fromLTRB(
                                    20, 10, 20, 10)),
                            foregroundColor:
                            MaterialStateProperty.all(
                                Color(0xFF30A7EF)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30),
                                    side: BorderSide(
                                        color:
                                        Colors.lightBlue)))),
                      ),
                    ],
                  ),
                ],
              )),
        )
      ],
    );
  }
}
