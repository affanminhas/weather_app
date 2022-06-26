import 'package:flutter/material.dart';
import 'package:weather/models/weather_model.dart';

class HomeScreen extends StatelessWidget {
  WeatherModel? weatherModel;
  String? cityNameWithCountry;

  HomeScreen({this.weatherModel, this.cityNameWithCountry = "Karachi,Pakistan"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(flex: 2,child: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/home_image.png")
                      )
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: IconButton(
                        onPressed: (){},
                        icon: const Image(image: AssetImage('images/loading_arrow.png'),)
                    ),
                  ),
                  Positioned(
                    top: 50,
                      left: 160,
                      child: Row(
                        children: [
                          Text(weatherModel!.location!.country ?? "", style: const TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 20
                          ),),
                          IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white,)
                          )
                        ],
                      )
                  ),
                  Positioned(
                    top: 150,
                      left: 160,
                      child: Row(
                        children: [
                          Text(((weatherModel!.current!.tempC!.toInt()).toString()), style: const TextStyle(
                            fontSize: 100,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                        ],
                      )
                  ),
                  const Positioned(
                      top: 170,
                      left: 260,
                      child: Image(image: AssetImage('images/celcius.png'),)),
                  Positioned(
                    top: 270,
                    left: 130,
                    child: Text(
                      weatherModel!.current!.isDay == 0? "Night, Clear Sky" : "Day, Sunny Sky" , style: const TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 22

                    ),
                    ),
                  )
                ],
              ),
            )),
            Expanded(flex: 1, child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Today", style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold
                        ),),
                        Text(cityNameWithCountry!, style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 17,
                          color: Color(0xff5F5F5F)
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Text("Now", style: TextStyle(fontFamily: "Poppins"),),
                            Image(
                              width: 60,
                              height: 60,
                              image: AssetImage('images/cloud.png'),
                            ),
                            Text("22",style: TextStyle(fontFamily: "Poppins"),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: const [
                              Text("Now", style: TextStyle(fontFamily: "Poppins"),),
                              Image(
                                width: 60,
                                height: 60,
                                image: AssetImage('images/cloud.png'),
                              ),
                              Text("22",style: TextStyle(fontFamily: "Poppins"),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: const [
                              Text("Now", style: TextStyle(fontFamily: "Poppins"),),
                              Image(
                                width: 60,
                                height: 60,
                                image: AssetImage('images/cloud.png'),
                              ),
                              Text("22",style: TextStyle(fontFamily: "Poppins"),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: const [
                              Text("Now", style: TextStyle(fontFamily: "Poppins"),),
                              Image(
                                width: 60,
                                height: 60,
                                image: AssetImage('images/cloud.png'),
                              ),
                              Text("22",style: TextStyle(fontFamily: "Poppins"),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: const [
                              Text("Now", style: TextStyle(fontFamily: "Poppins"),),
                              Image(
                                width: 60,
                                height: 60,
                                image: AssetImage('images/cloud.png'),
                              ),
                              Text("22",style: TextStyle(fontFamily: "Poppins"),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        )
    );
  }
}
