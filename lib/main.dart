import 'package:flutter/material.dart';

import 'carrot_item.dart';
import 'derail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Carrotitem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));
    items.add(Carrotitem(title: '팝니다', addr: '우리집1', price: 1000));

    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<Carrotitem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('malbob market'),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var item in items)
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(price: item.price),
                          ));
                    },
                    child: item)
            ],
          ),
        ));
  }
}
