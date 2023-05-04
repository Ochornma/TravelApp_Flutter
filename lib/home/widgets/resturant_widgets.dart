import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../model/home_models.dart';

class ResturantWidget extends StatelessWidget {
  const ResturantWidget({Key? key}) : super(key: key);

  static const items = [
    HomeScreenItems(name: "Japan's Finest Tapas", imageName: "tapas"),
    HomeScreenItems(name: "Bar & Grill", imageName: "bar_grill"),
  ];

  Widget _returnItem(HomeScreenItems item){
    return Row(
      children: [
        SizedBox(
          width: 350,
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(returnImage(item.imageName, 'jpeg'), height: 60, width: 60,fit: BoxFit.fill,),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  [
                            Text(item.name),
                            const Icon(Icons.more_horiz, color: Colors.black,),
                          ],
                        ),
                        Row(children: const [
                          Icon(Icons.star, color: Colors.black,),
                          Text('4.7 • Sushi • \$\$'),
                        ],
                        ),
                        const Text('Tokyo Japan')
                    ],
                    ),
                  )



                ],
              ),
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
              const Text("Popular Places to Eat"),

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
