import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_application_hello/ScreenA.dart';
import 'package:flutter_application_hello/ScreenB.dart';
import 'package:flutter_application_hello/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Snack Bar',
      // theme: ThemeData(primarySwatch: Colors.red),
      // home: MyPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}

/* class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page navigator'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              /* Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return SecondPage();
              })); */
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SecondPage(),
                  ));
            },
            child: Text('Go to the SecondPage!')),
      ),
    );
  }
} */

/* class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page navigator'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: Text('Go to the FirstPage!')),
      ),
    );
  }
} */

/* class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              flutterToast();
            },
            child: Text('Toast!', style: TextStyle(fontSize: 20.0)),
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.teal),
          ),
          ElevatedButton(
            onPressed: () {
              print('엘리베이터버튼');
            },
            child: Text('엘리베이터 버튼'),
            style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
          ),
          OutlinedButton(
            onPressed: () {
              print('아웃라인버튼입니다.');
            },
            child: Text('아웃라인버튼'),
            style: OutlinedButton.styleFrom(
                primary: Colors.green,
                side: BorderSide(color: Colors.black87, width: 2.0)),
          ),
          TextButton.icon(
            onPressed: () {
              print('아이콘 버튼');
            },
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.black87,
            ),
            label: Text('Go to home'),
            style: TextButton.styleFrom(primary: Colors.purple),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.all(20),
            children: [
              TextButton(
                  onPressed: () {
                    print('zzzzzzz');
                  },
                  child: Text('TextButton')),
              ElevatedButton(onPressed: () {}, child: Text('ElevatedButton')),
            ],
          )
        ],
      )),
    );
  }
} */

/* void flutterToast() {
  Fluttertoast.showToast(
      msg: 'flutter입니다',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
} */


// * Snack Bar
// class MySnackBar extends StatelessWidget {
//   const MySnackBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         child: Text('show me'),
//         onPressed: () {
//           // Scaffold.of(context).showSnackBar(snackbar)
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(
//                 'Hello!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.white),
//               ),
//               backgroundColor: Colors.teal,
//               duration: Duration(milliseconds: 1000),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
