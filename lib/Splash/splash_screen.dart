import 'package:flutter/material.dart';

class Splach_screen extends StatefulWidget {
  const Splach_screen({Key? key}) : super(key: key);

  @override
  State<Splach_screen> createState() => _Splach_screenState();
}

class _Splach_screenState extends State<Splach_screen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushReplacementNamed(context, "/");
    },);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 100),
              SizedBox(height: 50),
              Text("from",style: TextStyle(color: Colors.black45),),
              Text(
                "Darshan",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(color: Colors.red,backgroundColor: Colors.red.shade50,)
            ],
          ),
        ),
      ),
    );
  }
}
