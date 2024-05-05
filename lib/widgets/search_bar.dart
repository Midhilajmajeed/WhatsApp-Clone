import 'package:flutter/material.dart';


class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
     decoration: const BoxDecoration(
      color: Color.fromARGB(255, 246, 245, 243),
      borderRadius: BorderRadius.all(Radius.circular(24))
     ),
      child:  Row(
        children: [
          const SizedBox(width: 16,),
          const Icon(Icons.search),
          const SizedBox(width: 10,),
          Expanded(
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                border: InputBorder.none

                
              ),
              
            ),
          )
        ],
      ),
    
    );
  }
}
