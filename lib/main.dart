import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: "stock facile",
  debugShowCheckedModeBanner: false,
home: HomePage(),
) ;
 }
}
class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePagetState();
}

class _HomePagetState extends State<HomePage> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stock facile'),
        backgroundColor: Colors.blue,

     ),
    );
  }
}