import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text('Somtin App')),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int position) {
            Widget content = Container();
            if (position == 0){
              content =_balanceView();
            }
            else {
              
            }
            return _balanceView();
          }),
    );
  }
}

Widget _balanceView() {
  return Row(
    children: [
      Expanded(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total gift Voucher'),
            Text(
              'GHS 10.00',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'BUY GIFT VOUCHER',
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      )),
      Icon(
        Icons.picture_in_picture_alt,
        size: 80,
      )
    ],
  );
}
