import 'package:flutter/material.dart';


class SearchField extends StatefulWidget {
  const SearchField({super.key});


  @override
  State<SearchField> createState() => _SearchFieldState();
}


class _SearchFieldState extends State<SearchField> {
  final controller = TextEditingController();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            hintText: 'Where do you want to go to',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Color.fromARGB(50, 255, 255, 255),
            prefixIconColor: Colors.white
          ),
          style: const TextStyle(
              color: Colors.white,
              fontSize: 14),
          maxLines: 1,
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {
            dispatchConcrete();
          },
        ),
      ],
    );
  }

  void dispatchConcrete() {
    // Clearing the TextField to prepare it for the next inputted number
    controller.clear();


  }

  void dispatchRandom() {

  }
}
