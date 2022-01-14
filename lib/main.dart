import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              flutterToast();
            },
            child: Text('Toast!'),
            // style: TextButton.styleFrom(
            //   primary: Colors.red
            // )
            // style: TextButton.styleFrom(primary: Colors.red)),
            style: ButtonStyle(
                // foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
              if (states.contains(MaterialState.focused)) return Colors.red;
              if (states.contains(MaterialState.hovered)) return Colors.green;
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return null; // Defer to the widget's default.
            }))),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'flutter입니다',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}





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
