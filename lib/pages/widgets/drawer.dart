
import 'package:flutter/material.dart';
import 'package:imc/utils/subtitle_drawer.dart';
import 'package:imc/utils/title_drawer.dart';

customDrawer ({
  required about,
  required version,
  required author,
  required context,
}) => Drawer(
  child: Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  
  child: ListView(
    children: [

        titleDrawer(text: about),
        subTitleDrawer(text: "Um aplicativo para calculo e classificação de IMC"),
        
      
         Divider(),
       
        titleDrawer(text: author),
        subTitleDrawer(text: "Felype Rangel <Felype Invictus>"),
        
        Divider(),
       
        titleDrawer(text: version),
        subTitleDrawer(text: "1.0.0"),
         Divider(),
  SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
          Center(
            child: subTitleDrawer(text: "Auctor Ego Audenti!"),
          )
         
     
    ],
  ),
  ),
  
);