import 'package:cafe/cafemenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  List<CafeMenu> menu = [
    CafeMenu('mango-smoothie', 50, 'assets/images/menu1.jpg'),
    CafeMenu('kiwi-smoothie', 80, 'assets/images/menu2.jpg'),
    CafeMenu('berries-yogurt-smoothies', 125, 'assets/images/menu3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'คาเฟ่ | ว้าดำ ',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('คาเฟ่ @ว้าดำ',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text(
                'หัวหน้าเผ่า : พี่เสก สมรักษ์',
                style: TextStyle(
                    fontSize: 20, color: Colors.deepOrangeAccent[400]),
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            CafeMenu drink = menu[index];
            return ListTile(
                leading: Image.asset(drink.img),
                title: Text(
                  drink.name,
                  style: TextStyle(fontSize: 30, color: Colors.blueGrey[600]),
                ),
                subtitle: Text('ราคา ' + drink.price.toString() + ' บาท',
                    style: TextStyle(fontSize: 22, color: Colors.pink)));
          },
        ),
        backgroundColor: Colors.blueGrey[50],
      ),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}
