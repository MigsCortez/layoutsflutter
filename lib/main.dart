import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: RowAndColumn(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: Colors.orange),
//       child: Center(
//         child: Text(
//           'Hello World',
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//             fontSize: 32,
//             color: Colors.black87,
//           ),
//         ),
//       ),
//     );
//   }
// }

class RowAndColumn extends StatefulWidget {
  @override
  _RowAndColumnState createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset('images/griffin.png'),
        ),
        Expanded(
          flex: 2,
          child: Image.asset('images/M.png'),
        ),
        Expanded(
          child: Image.asset('images/sunset.png'),
        )
      ],
    );
  }
}
