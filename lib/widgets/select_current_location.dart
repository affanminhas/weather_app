import 'package:flutter/material.dart';
import 'package:weather/screens/home_screen.dart';

class CurrentLocationField extends StatelessWidget {
  const CurrentLocationField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> HomeScreen()));
      },
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(0xffE0E0E0),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Select Current Location", style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 17,
                  color: Colors.black
                ),),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        )
      ),
    );
  }
}