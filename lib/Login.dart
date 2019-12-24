import 'package:flutter/material.dart';

class PayLogin extends StatefulWidget {
  PayLogin({Key key}) : super(key: key);

  @override
  _PayLoginState createState() => _PayLoginState();
}

class _PayLoginState extends State<PayLogin> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                child: Container(
                    color: Colors.deepPurple,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Grow",
                          style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.yellow,
                            fontFamily: 'Lobster',
                          ),
                        ),
                        Text(
                          "Pay",
                          style: TextStyle(
                              fontSize: 35.0,
                              fontFamily: 'Lobster',
                              color: Colors.white),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: "Phone Number"),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Password"),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Checkbox(
                                    onChanged: (bool value) {
                                      setState(() {
                                        check = value;
                                      });
                                    },
                                    value: check,
                                  ),
                                  Text("Remember me")
                                ],
                              ),
                            ),
                            Expanded(
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("Forget Password"),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 50.0,
                            child: FlatButton(
                              color: Colors.deepPurple,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 200.0,
                            child: Divider(
                              color: Colors.black,
                              height: 40.0,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            "create an account",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
