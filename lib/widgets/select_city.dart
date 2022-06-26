import 'package:flutter/material.dart';
import 'package:weather/screens/city_selection.dart';

class SelectCity extends StatelessWidget {
  const SelectCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CitySelectionScreen()));
      },
      child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color(0xff6DC9EF),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Select City", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 17,
                      color: Colors.white
                  ),),
                  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white,)
                ],
              ),
            ),
          )
      ),
    );
  }
}
