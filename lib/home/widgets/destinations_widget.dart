import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../model/home_models.dart';

class DestinationWidgets extends StatelessWidget {
  const DestinationWidgets({Key? key}) : super(key: key);

  static const items = [
    HomeScreenDestinationItems(name: "Paris", imageName: "eiffel_tower", country: "France", latitude: 48.855014, longitude: 2.341231),
    HomeScreenDestinationItems(name: "Tokyo", imageName: "japan", country: "Japan", latitude: 35.67988, longitude: 139.7695),
    HomeScreenDestinationItems(name: "New York", imageName: "new_york", country: "US", latitude: 40.71592, longitude: -74.0055),
  ];

  Widget _returnItem(HomeScreenDestinationItems item){
    return Row(
      children: [
        Card(
          elevation: 10,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(returnImage(item.imageName, 'jpg'),
                  height: 120, 
                  width: 120, 
                  fit: BoxFit.fill,
                ),
                Text(item.name),
                Text(item.country)
              ],
            ),
          ),
        ),

        const SizedBox(width: 12,)
      ],
    );

  }
    
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 20), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:   [
              const Text("Popular Destination"),

              TextButton(
                  onPressed: () {
                  },
                  child: const Text('See All', style: TextStyle(color: Colors.black),)
              
              )
          ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 0; i < items.length; i++)
                _returnItem(items[i])
              ],
            ),
          )
        ],
      ),
    );
  }
}
