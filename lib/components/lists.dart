import 'package:flutter/material.dart';

class Lists extends ChangeNotifier{
  // ignore: prefer_final_fields
  List<List<dynamic>> _categoryCard = [
    [
      'Camp',
      'assets/images/tent.png',
      Colors.pink,
      1.0,
    ],
    [
      'Mountain',
      'assets/images/mountain.png',
      Colors.white,
      0.0,
    ],
    [
      'Beach',
      'assets/images/island.png',
      Colors.white,
      0.0,
    ],
    [
      'Desert',
      'assets/images/desert.png',
      Colors.white,
      0.0,
    ]
  ];

  List<List<dynamic>> get categoryCard => _categoryCard;

  void selectCatagory(int index){
    for(int i = 0;i< _categoryCard.length;i++){
      _categoryCard[i][2] = Colors.white;
      _categoryCard[i][3] = 0.0;
    }
    _categoryCard[index][2] = Colors.pink;
      _categoryCard[index][3] = 1.0;
    
    
    notifyListeners();
  }
  
  // List<DropdownMenuItem<String>> dropDownMenuList = [
  //   const DropdownMenuItem(
  //     child: Text('hii'),
  //   ),
  //   const DropdownMenuItem(
  //     child: Text('hii'),
  //   ),
  //   const DropdownMenuItem(
  //     child: Text('hii'),
  //   ),
  // ];
}
