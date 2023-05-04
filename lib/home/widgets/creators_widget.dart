import 'package:flutter/material.dart';
import 'package:travel_app_flutter/utils/utils.dart';

import '../model/home_models.dart';


class CreatorsWidget extends StatelessWidget {
  const CreatorsWidget({Key? key}) : super(key: key);


  static const items = [
    HomeScreenItems(name: "Amy Adams", imageName: "amy"),
    HomeScreenItems(name: "Billy", imageName: "billy"),
    HomeScreenItems(name: "Sam Smart", imageName: "sam"),
  ];

  Widget _returnItem(HomeScreenItems item){
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(returnImage(item.imageName, 'jpeg')),
              ),

            Text(item.name, style: const TextStyle(fontSize: 12, color: Colors.black),)
          ],
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
              const Text("Trending Creators"),

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
