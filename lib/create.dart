import 'package:flutter/material.dart';

import 'package:twitha/namesphotos.dart';
import 'package:google_fonts/google_fonts.dart';


import 'colors.dart';

import 'main.dart';


//this page is for creating new posts. the page you generally type your next tweet

class CreateContent extends StatefulWidget {
  const CreateContent({ Key? key }) : super(key: key);

  @override
  _CreateContentState createState() => _CreateContentState();
}

class _CreateContentState extends State<CreateContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      appBar: tweeting(),
      body: textSpace(),
      bottomNavigationBar: addExtra(),



    );

  }
   tweeting(){

     double c = (0.25 ).toDouble();

     return AppBar(
        leading: IconButton(
        icon: Icon(Icons.close_outlined, color: logorenk, size: 30,),
        onPressed: () => Navigator.of(context).pop(),
                        ), 

       backgroundColor: backgrounbar1,
       title: Container(
         width: double.infinity,
         child: Row(
           
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[ InkWell(

             onTap:() => Navigator.of(context).pop(),

             child: Container(
               
               width: MediaQuery.of(context).size.width*c,
             height: 30,
                decoration: BoxDecoration(
                  color: logorenk,
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                child: Center(child: RichText(text: TextSpan( text: "Woofit", style: GoogleFonts.montserrat( textStyle: TextStyle(fontWeight: FontWeight.w500, color: duztext, fontSize: 15))))),
               ),
           ),
           ], ),
       ),
       

       );

     

   }
  textSpace(){ 
    double b = (0.1 ).toDouble();
    double e = (0.7).toDouble();
    
    return Row(

      children: <Widget>[

        //Image
         Padding( //profil resmi
                  padding: const EdgeInsets.only(left: 20, top:15),
                  child: Container(
      
                   width: MediaQuery.of(context).size.width*b,
                   height: 30,
                   decoration: BoxDecoration(
      
                     shape: BoxShape.circle,
                     image: DecorationImage(image: NetworkImage(People[3]['img']),fit: BoxFit.cover)
      
                   ),
      
                  ),
         ),

         
        //textarea
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(width: MediaQuery.of(context).size.width*e,
            child: TextField(
              style: TextStyle(color: duztext, fontSize: 15,fontWeight: FontWeight.w500),
  decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        
    hintText: "What's happening" ,hintStyle: TextStyle(color: seffafrenk, fontWeight: FontWeight.w600)
  ),
),),
        )
      ],

    );

   }
  addExtra(){

    double s = (0.4).toDouble();
    double ss= (0.3).toDouble();

    List addStuff = [

      Icon(
  Icons.collections_rounded, color: logorenk, size: 25,
),
  Icon(
  Icons.gif_rounded,  color: logorenk, size: 25,
),

  Icon(
  Icons.poll_rounded, color: logorenk, size: 25,
),

  Icon(
  Icons.place_rounded, color: logorenk, size: 25,
),
    ];

    List addStuffRight = [

      Icon(
  Icons.radio_button_unchecked_rounded, color: duztext.withOpacity(0.4), size: 25,
),

    VerticalDivider(thickness: 2, color: duztext.withOpacity(0.4),),

    Icon(
  Icons.add_circle_rounded, color: logorenk, size: 25,
),


    ];

    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[

            //-sol
            Container(
                //resim
            //gif

              width: MediaQuery.of(context).size.width*s,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  List.generate(addStuff.length, (index) {

                      return InkWell(
                        child: addStuff[index],

                      );

                  })
                ),
              ),
            ),
          
            //-sağ

             Container(
                //resim
            //gif

              width: MediaQuery.of(context).size.width*ss,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  List.generate(addStuffRight.length, (index) {

                      return InkWell(
                        child: addStuffRight[index],

                      );

                  })
                ),
              ),
            )


            //ekstra ek

        ],

      ),
    );

  }
}
