import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_flutter/home/widgets/categories_widget.dart';
import 'package:travel_app_flutter/home/widgets/search_field.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFCAE40), Color(0xFFFE7245)],
                begin: Alignment.topCenter,
                end: Alignment.center,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [const Padding(
                padding: EdgeInsets.only(left: 12, top: 100),
                child: Text("Discover",
                  textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              ),
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 20, right: 12),
                  child: SearchField(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 12, right: 12),
                  child: CategoriesWidget(),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    decoration:  const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                    ),
                    child: Column(
                      children: [
                        
                      ],
                    ),
                  ),
                )
            ]
            ),
          ),
    )
    );

  }
}
