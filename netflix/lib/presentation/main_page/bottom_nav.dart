
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build (BuildContext context){
    
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,builder: (context, int newIndex, _){
         return BottomNavigationBar(
            currentIndex:newIndex,
            onTap: (index){
              indexChangeNotifier.value=index;
            },
            backgroundColor: Colors.black,
            type:BottomNavigationBarType.fixed,
            selectedItemColor:Colors.white,
            unselectedItemColor:Colors.grey,
            selectedIconTheme:const IconThemeData(
              color:Colors.white ),
            unselectedIconTheme: const IconThemeData(
              color:Colors.grey
            ),

            items: const [
                  BottomNavigationBarItem(
                    icon:Icon(Icons.home),
                    label: 'home'
                    ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.collections),
                    label: 'New & Hot'
                    ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.emoji_emotions),
                    label: 'Fast Laughs'
                    ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.search),
                    label: 'Search'
                  ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.download),
                    label: 'Downloads'
                  ),

          ]
          
          );
      }

    );
  }
}