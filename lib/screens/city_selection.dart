import 'package:flutter/material.dart';
import 'package:weather/widgets/city_selection_screen_widgets/city_suggestion.dart';
import 'package:weather/widgets/city_selection_screen_widgets/current_location_field.dart';
import 'package:weather/widgets/search_field.dart';

class CitySelectionScreen extends StatelessWidget {
  TextEditingController searchCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10),
            child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)
            )
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Select City", style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 30,
              color: Colors.black
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SearchField(searchController: searchCtr, hintText: "Enter your city name"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: CitySelectionCurrentLocationField(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
                itemBuilder: updateList
            ),
          ),
        ],
      )
    );
  }

  Widget updateList(BuildContext context, int index) {
    List<String> cities = ["Karachi,Pakistan","Sydney,Australia","Barcelona,Argentina"];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: CitySuggestionField(cityName: cities[index]),
    );
  }
}
