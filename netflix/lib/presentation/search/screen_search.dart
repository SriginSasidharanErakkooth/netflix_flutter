import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widget/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          
           child:Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoSearchTextField(
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: Colors.grey
                      ),
                      suffixIcon:Icon(
                        CupertinoIcons.xmark_circle_fill,
                        color:Colors.grey
                        ) ,
                      style: TextStyle(color: Colors.white),
                      backgroundColor:Colors.grey.withOpacity(0.4),
                    ),
                    //kHeight // height bw the these component
                    Text("TopSearch",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    const SearchIdleWidget()
                    
                    
                    ],))
                    )
    );
  }
}