import 'package:flutter/material.dart';

class CitySuggestionField extends StatelessWidget {
  String cityName;
  CitySuggestionField({required this.cityName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
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
                children: [
                  Text(cityName, style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 17,
                      color: Colors.black
                  ),),
                ],
              ),
            ),
          )
      ),
    );
  }
}
