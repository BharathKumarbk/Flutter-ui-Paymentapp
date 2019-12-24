import 'package:flutter/material.dart';
import 'package:andbpro1/body.dart';

class PayMain extends StatefulWidget {
  PayMain({Key key}) : super(key: key);

  @override
  _PayMainState createState() => _PayMainState();
}

class _PayMainState extends State<PayMain> {
  Color iconColor = Colors.white;
  TextStyle textStyle = TextStyle(
      color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold);
  Color navColor = Colors.yellowAccent;
  int _selectedIndex = 0;
  void _ontap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0.0,
          leading: Icon(
            Icons.menu,
            size: 30.0,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.settings,
                size: 30.0,
              ),
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Grow",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.yellow,
                    fontFamily: 'Lobster'),
              ),
              Text(
                "Pay",
                style: TextStyle(fontFamily: 'Lobster'),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _ontap,
          selectedItemColor: navColor,
          unselectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.home,
                    size: 30.0,
                  ),
                ),
                title: Text(
                  "Home",
                  style: textStyle,
                )),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.history,
                    size: 30.0,
                  ),
                ),
                title: Text(
                  "history",
                  style: textStyle,
                )),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.money_off,
                    size: 30.0,
                  ),
                ),
                title: Text(
                  "reward",
                  style: textStyle,
                )),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.account_circle,
                    size: 30.0,
                  ),
                ),
                title: Text(
                  "Profile",
                  style: textStyle,
                )),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
                child: Container(
                  color: Colors.deepPurple,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text(
                          "My Balance",
                          style:
                              TextStyle(color: Colors.yellow, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                        child: Text(
                          "Rs 900/-",
                          style: TextStyle(color: Colors.white, fontSize: 40.0),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          payment("Add", Icons.add),
                          payment("Send", Icons.arrow_upward),
                          payment("Recieve", Icons.arrow_downward),
                          payment("Withdraw", Icons.expand_more),
                        ],
                      ),
                      Center(
                        child: Container(
                          height: 50.0,
                          width: 300.0,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "pay via GrowPay and get Reward",
                          style: TextStyle(
                              color: Colors.yellowAccent, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  children: <Widget>[
                    bodyGrid("Electricty bill", Icons.graphic_eq),
                    bodyGrid("Recharge", Icons.attach_money),
                    bodyGrid("Bus Ticket", Icons.burst_mode),
                    bodyGrid("Train Ticket", Icons.train),
                    bodyGrid("Air Ticket", Icons.local_airport),
                    bodyGrid("Hotel Booking", Icons.hotel)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
