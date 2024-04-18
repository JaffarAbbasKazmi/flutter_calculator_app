import 'package:flutter/material.dart';

class MyButon extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButon({super.key , required this.title , required this.color , required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(padding: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
        child:InkWell(
            onTap: onPress,
            child:Container(
            height: 80,
            decoration:  BoxDecoration(
                color : color,
                shape: BoxShape.circle
            ),
            child: Center(
              child:  Text(
                title ,
                style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),
              ),
            )
        )
        ) ));
  }
}
