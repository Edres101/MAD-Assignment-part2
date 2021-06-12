import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var decor = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
    boxShadow: [
      BoxShadow(color: Colors.blue, spreadRadius: 3),
    ],
  );

  var switch_on1 = 1;
  var switch_on2 = 1;

  var switch_on3 = 1;
  var switch_on4 = 1;

  var switch_on5 = 1;
  var switch_on6 = 1;

  // var icon = Icon(
  //   Icons.toggle_on,
  //   color: Colors.blue,
  //   size: 24.0,
  // );

  var tv = Icon(
    Icons.tv,
    color: Colors.blue,
    size: 30,
  );

  var light = Icon(
    Icons.lightbulb_outline,
    color: Colors.blue,
    size: 30,
  );

  var parking = Icon(
    Icons.local_parking,
    color: Colors.blue,
    size: 30,
  );

  var wifi = Icon(
    Icons.wifi,
    color: Colors.blue,
    size: 30,
  );

  var car = Icon(
    Icons.directions_car_rounded,
    color: Colors.blue,
    size: 30,
  );

  var motorcycle = Icon(
    Icons.motorcycle_rounded,
    color: Colors.blue,
    size: 30,
  );

  var texts = ['OFF', ''];

  var power = Icon(Icons.power_settings_new, color: Colors.black45, size: 30);

  var box = BoxDecoration(
      borderRadius: BorderRadius.circular(5), color: Colors.white54);

  var text = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w900,
    letterSpacing: 2,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text('My Home')),
              bottom: TabBar(
                tabs: [
                  Text('ALL', style: text),
                  Text('ELECT', style: text),
                  Text('LIGHT', style: text),
                  Text('TRANS', style: text),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.blueGrey,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: tv,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on1 == 0) {
                                                    tv = Icon(
                                                      Icons.tv,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on1 = 1;
                                                  } else {
                                                    tv = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on1 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on1 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Television')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on1]))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: light,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on2 == 0) {
                                                    light = Icon(
                                                      Icons.lightbulb_outline,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on2 = 1;
                                                  } else {
                                                    light = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on2 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on2 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Room Light')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on2]))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: parking,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on3 == 0) {
                                                    parking = Icon(
                                                      Icons.local_parking,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on3 = 1;
                                                  } else {
                                                    parking = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on3 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on3 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Parking Light')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on3]))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: wifi,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on4 == 0) {
                                                    wifi = Icon(
                                                      Icons.wifi,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on4 = 1;
                                                  } else {
                                                    wifi = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on4 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on4 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('WIFI Power')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on4]))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: car,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on5 == 0) {
                                                    car = Icon(
                                                      Icons
                                                          .directions_car_rounded,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on5 = 1;
                                                  } else {
                                                    car = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on5 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on5 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Car')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on5]))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: motorcycle,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on6 == 0) {
                                                    motorcycle = Icon(
                                                      Icons.motorcycle_rounded,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on6 = 1;
                                                  } else {
                                                    motorcycle = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on6 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on6 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Motorcycle')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on6]))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: tv,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on1 == 0) {
                                                    tv = Icon(
                                                      Icons.tv,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on1 = 1;
                                                  } else {
                                                    tv = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on1 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on1 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Television')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on1]))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: wifi,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on4 == 0) {
                                                    wifi = Icon(
                                                      Icons.wifi,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on4 = 1;
                                                  } else {
                                                    wifi = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on4 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on4 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('WIFI Power')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on4]))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: parking,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on3 == 0) {
                                                    parking = Icon(
                                                      Icons.local_parking,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on3 = 1;
                                                  } else {
                                                    parking = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on3 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on3 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Parking Light')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on3]))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: light,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on2 == 0) {
                                                    light = Icon(
                                                      Icons.lightbulb_outline,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on2 = 1;
                                                  } else {
                                                    light = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on2 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on2 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Room Light')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on2]))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: car,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on5 == 0) {
                                                    car = Icon(
                                                      Icons
                                                          .directions_car_rounded,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on5 = 1;
                                                  } else {
                                                    car = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on5 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on5 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Car')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on5]))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 170,
                              height: 125,
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: box,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10.0),
                                          child: IconButton(
                                              icon: motorcycle,
                                              onPressed: () {
                                                setState(() {
                                                  if (switch_on6 == 0) {
                                                    motorcycle = Icon(
                                                      Icons.motorcycle_rounded,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on6 = 1;
                                                  } else {
                                                    motorcycle = Icon(
                                                      Icons.toggle_on,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    );
                                                    switch_on6 = 0;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          child: switch_on6 == 0 ? power : null,
                                        )
                                      ]),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text('Motorcycle')),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(texts[switch_on6]))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
