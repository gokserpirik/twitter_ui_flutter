import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:twitha/namesphotos.dart';

import 'colors.dart';
import 'create.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


    
  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
      Theme.of(context).textTheme,),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: backgrounbar1,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  
 
  int PageIndex = 0;
  
  
  void _incrementCounter() {
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CreateContent()),
  );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    
    return Scaffold(
      appBar: barSelector(),
      body:   bodySelector(),
      bottomNavigationBar: getFooter(),


      floatingActionButton: FloatingActionButton(
        focusColor: logorenk,
        onPressed: _incrementCounter,
        tooltip: 'Write',
        child: Icon(
  Icons.create_outlined,
),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  barSelector(){
    if (PageIndex==0){return Twitha();}
    else if (PageIndex==1){return Searcha();}
    else if (PageIndex==2){return Nota();}
    else {return Messaga();};
    


  }

  
  bodySelector(){
    if (PageIndex==0){return bodyHome();}
    else if (PageIndex==1){return bodySearch();}
    else if (PageIndex==2){return bodyNotf();}
    else {return bodyMsg();};
    


  }




  ScrollController _scrollController = ScrollController();
    
  Widget getFooter(){
 
    
     
     
    List footerbottom =
    [
     PageIndex == 0 ? Icon(Icons.home, size: 34, color: logorenk.withOpacity(1),): Icon(Icons.home, size: 34, color: duztext.withOpacity(0.5),),
     PageIndex == 1 ? Icon(Icons.search, size: 34, color: logorenk.withOpacity(1),): Icon(Icons.search, size: 34, color: duztext.withOpacity(0.5),),
     PageIndex == 2 ? Icon(Icons.notifications_outlined, size: 34, color: logorenk.withOpacity(1.0),):  Icon(Icons.notifications_outlined, size: 34, color: duztext.withOpacity(0.5),),
     PageIndex == 3 ? Icon(Icons.mail_outlined, size: 34, color: logorenk.withOpacity(1),): Icon(Icons.mail_outlined, size: 34, color: duztext.withOpacity(0.5),),
   
      


    ];
   
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
       
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          height: 60,
         
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: List.generate(footerbottom.length, (index) {
      
            return InkWell(
      
              onTap: (){
                setState(() {
                  PageIndex = index;
                });
              },
              child: footerbottom[index],
      
            );
      
            }),
      
          ),
        ),
      ),
    );
    

  }




  // START Appbars
  PreferredSizeWidget Twitha(){
    

    

     return AppBar(
        backgroundColor: backgrounbar1,
        title: Column(
          children: <Widget>[Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
            children: <Widget>[
        
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(People[3]['img']),fit:BoxFit.cover)
                  ),
        
        
        
                ),
              ),
              InkWell(
                onTap: () {

                  
                   /// Scroll maximum end, if you want you can give hardcoded values also in place of _scrollController.position.maxScrollExtent
                    _scrollController.animateTo(
                        0.0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                  },
                child: Icon(Icons.pets_outlined, color:logorenk, size: 30,)),
              Icon(  Icons.auto_awesome_outlined, size: 25, color: logorenk,),
              
             
            
        
            ],
        
          ),
          
          
          //çizgi eklemeyemedim
          ]
        ),

        
      );


  }

  PreferredSizeWidget Searcha(){

    

    return AppBar(
    backgroundColor: backgrounbar1,
     title: Padding(
       padding: const EdgeInsets.symmetric(horizontal:5 ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width*(0.06).toDouble(),
              height: MediaQuery.of(context).size.width*(0.06).toDouble(),
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(People[3]['img']),fit: BoxFit.cover,),shape: BoxShape.circle),
            ),
            Container(
              width: MediaQuery.of(context).size.width*(0.65).toDouble(),
              height: MediaQuery.of(context).size.width*(0.08).toDouble(),
              decoration: BoxDecoration(color: searchbar, borderRadius: BorderRadius.circular(25),) ,
              child: Padding(
                padding: const EdgeInsets.only(left: 25 ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween  ,children: <Widget>[ Text("Search", style: TextStyle(color: seffafrenk,fontSize: 15 ),)]),
              ) ,

            ),
            Icon(Icons.settings, size: 25, color: logorenk,)
          ]

       ),
     ) ,

    );


  }
  PreferredSizeWidget Nota(){return AppBar(


    backgroundColor: backgrounbar1,
     title: Padding(
       padding: const EdgeInsets.symmetric(horizontal:5 ),
       child: Row(

          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width*(0.06).toDouble(),
              height: MediaQuery.of(context).size.width*(0.06).toDouble(),
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(People[3]['img']),fit: BoxFit.cover,),shape: BoxShape.circle),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Container(
                width: MediaQuery.of(context).size.width*(0.65).toDouble(),
                height: 40,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:<Widget>[ Text("Notifications",style: TextStyle(fontSize: 20,color: duztext),)]),

              ),
            ),
           
          ]

       ),
     ) ,
  );}
  PreferredSizeWidget Messaga(){return AppBar(

     backgroundColor: backgrounbar1,
     title: Padding(
       padding: const EdgeInsets.symmetric(horizontal:5 ),
       child: Row(

          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width*(0.06).toDouble(),
              height: MediaQuery.of(context).size.width*(0.06).toDouble(),
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(People[3]['img']),fit: BoxFit.cover,),shape: BoxShape.circle),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: Container(
                width: MediaQuery.of(context).size.width*(0.65).toDouble(),
                height: 40,
                child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:<Widget>[ Text("Messages",style: TextStyle(fontSize: 20,color: duztext),)]),

              ),
            ),
           
          ]

       ),
     ) ,
  );}

  //FINISH Appbars
  Widget bodyHome(){

    

    return Padding(
      padding: const EdgeInsets.only(left: 16,top: 5),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: Column(//tüm içerikler burada
      
          children: <Widget>[

            Column(

              children: List.generate(20, (index) {

                return GeneratePOST();

              } ),

            ),
            
      
         
           

           
            
         

            

        
      
      
          ],
      
        ),
      ),
    );
  }

  Widget bodySearch(){
    int j=0;

    createShoutout(b,c,d){
     return  Container( 
                   decoration: BoxDecoration(
                            border: Border.all(color: seffafrenk),
                            borderRadius:BorderRadius.circular(20),
                          ),
                  

                  width: MediaQuery.of(context).size.width*(0.3).toDouble(),
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      SizedBox(height: 10,),

                      Container(width: MediaQuery.of(context).size.width*(0.15).toDouble(),
                      height: MediaQuery.of(context).size.width*(0.15).toDouble() ,
                      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(People[5]['$b']),fit:BoxFit.cover),shape: BoxShape.circle),),
                      Container(
                         width: MediaQuery.of(context).size.width*(0.2).toDouble(),
                        child: Column(
                          children: [
                            Text("$c",style: TextStyle(fontSize: 14,color: duztext), overflow: TextOverflow.ellipsis,),
                            Text("@$d",style: TextStyle(fontSize:14, color: seffafrenk, ), overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      InkWell(

                        onTap: (){

                         
    


                        },
                        child: Container(
                        height:22,
                        width: 60 ,
                        child: Center(child: Text(" Follow ",style: TextStyle(color: logorenk,fontSize: 14 ),)),
                      
                        decoration: BoxDecoration(
                          border: Border.all(color: logorenk),
                          borderRadius:BorderRadius.circular(25),
                        )

                      ),),
                      
                      SizedBox(height: 35,)

                    ],
                  ),

                );

    }
    createHashtag(a,b){

      return Column(
        children:[ Container(
          height: 35,
          child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween, children: [Container(
           
                child: Row(
                  
                  children: [Icon(Icons.tag_outlined,size: 25, color:seffafrenk ,  ),
                  SizedBox(width: MediaQuery.of(context).size.width*(0.04).toDouble() ,),
                  Column( crossAxisAlignment: CrossAxisAlignment.start,children: [Text("Trend in $a ",style: TextStyle(fontSize: 13, color: seffafrenk ),  ), Text("$b", style: TextStyle(color: duztext, fontSize: 14, fontWeight: FontWeight.w800) ,)],)
                
                
                
                ],),
              ),
      
      
              Column(
               
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.more_vert_rounded, size:13, color: seffafrenk,),
                ],
              )
              
              
              ],
              
              
              ),
        ),
            SizedBox(height: 7,),
            Divider(height: 3,color: seffafrenk,),
            SizedBox(height: 7,)
            
            ]
      );

    }
  
    return Padding(
      padding: const EdgeInsets.only(left: 16,top: 5, right: 16,),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            
            //TRENDS
            Column(children: [

            Container(height: 20,child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Trends",style: TextStyle(color: duztext,fontSize: 16,fontWeight: FontWeight.w800),),
              ],
            ),),
            SizedBox(height: 5,),
            Divider(height: 5, color:seffafrenk,),
            SizedBox(height: 5,),


            createHashtag('Iceland','#GoIceland'),
            createHashtag('Iceland','#NordicsWin'),
            createHashtag('Worlwide','#WhatsHappening'),
            createHashtag('Worlwide','Wut'),
            createHashtag('Iceland','Haha go brr'),

            

          ],),

          //TRENDS son
          Divider(height:15,thickness: 20, ),
          
            Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 20,child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text("You can follow these",style: TextStyle(color: duztext,fontSize: 16,fontWeight: FontWeight.w800),),
              ],
            ),),
                ),
                
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Row(
                
                    children: [
                
                      createShoutout('img','FindAName' , 'damnthishard'),
                      SizedBox(width:10),
                      createShoutout('img2','FindAGoodName' , 'damnthistoohard'),
                      SizedBox(width:10),
                      createShoutout('img','FindAName' , 'damnthishard'),
                      SizedBox(width:10),
                      createShoutout('img2','FindAGoodName' , 'damnthistoohard'),
                      SizedBox(width:10),
                      createShoutout('img','FindAName' , 'damnthishard'),
                      SizedBox(width:10),
                      createShoutout('img2','FindAGoodName' , 'damnthistoohard'),
                
                
                      
                    ],
                
                  ),
                ),
              ],
            ),
          
            ],
        )

      

      ),
    );
  }
  Widget bodyNotf(){
    return Padding(
      padding: const EdgeInsets.only(left: 16,top: 5),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child:Column(
          children: [Column(children: [Row(children: [Row(),Icon(Icons.more_vert_rounded, size:25, color: duztext,)],)],)],
          
        )



      ),
    );
  }
  Widget bodyMsg(){
    return Padding(
      padding: const EdgeInsets.only(left: 16,top: 5),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child:Column(
          children: [Column(children: [Row(children: [Row(),Icon(Icons.more_vert_rounded, size:25, color: duztext,)],)],)],
          
        )



      ),
    );
  }



    int ActIndex = 0;
    int ActIndex1 = 0;
    int ActIndex2 = 0; 

    Deneme(index){

        if (ActIndex == 0) {
             setState(() {
               ActIndex = index;
             });}else { setState(() {
               ActIndex = 0;
             });} ;
           }

    Deneme1(index){

        if (ActIndex1 == 0) {
             setState(() {
               ActIndex1 = index;
             });}else { setState(() {
               ActIndex1 = 0;
             });} ;
           }

    Deneme2(index){

        if (ActIndex2 == 0) {
             setState(() {
               ActIndex2 = index;
             });}else { setState(() {
               ActIndex2 = 0;
             });} ;
           }



   Begengec() {
   

  List simgeler =[
    
    Icon( Icons.mode_comment_outlined, color: seffafrenk, size: 18,),
    ActIndex ==1 ?  Icon(  Icons.swap_horiz_rounded, color: Colors.green, size: 19,):Icon(  Icons.swap_horiz_rounded, color: seffafrenk, size: 18,),
    ActIndex1 ==2 ?  Icon(  Icons.favorite ,color: Colors.red, size: 19,):Icon(  Icons.favorite_outline_outlined,color:seffafrenk, size: 18,),
    ActIndex2 ==3 ?  Icon(  Icons.share,color: logorenk, size: 19,):Icon(  Icons.share_outlined,color: seffafrenk, size: 18,),
    
    


  ];


 
  return Row(
    
    

    children: <Widget>[

      Container(
        width: MediaQuery.of(context).size.width*(0.75).toDouble(),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          
          children :<Widget>[ 
            Padding(
                     padding: const EdgeInsets.only(right: 17),
                     child: InkWell(
                       onTap: (){
                        //diğer sayfa muhabbeti olacak
                    ;
                   },
                       
                       child: simgeler[0]),
                   ),

            Padding(
                     padding: const EdgeInsets.only(right: 17),
                     child: InkWell(
                       onTap: (){
                         
                      Deneme(1)
                    ;
                   },
                       
                       child: simgeler[1]),
                   )  ,     


            Padding(
                     padding: const EdgeInsets.only(right: 17),
                     child: InkWell(
                       onTap: (){
                         
                      Deneme1(2)
                    ;
                   },
                       
                       child: simgeler[2]),
                   ),      

             Padding(
                     padding: const EdgeInsets.only(right: 17),
                     child: InkWell(
                       onTap: (){
                         
                      Deneme2(3)
                    ;
                   },
                       
                       child: simgeler[3]),
                   )     
          ]),
      )
                
                
               

    ],

  );

}


  Contenttweet() {
    double a = (0.75 ).toDouble();
  return    Container(
    
    width: MediaQuery.of(context).size.width*a,
    
    child: RichText(text: TextSpan(children: [
        
                                TextSpan(text: "Hello ", style: GoogleFonts.montserrat( textStyle: TextStyle(color: duztext, fontSize: 14,))),
                                TextSpan(text: "#Woofitter", style: GoogleFonts.montserrat( textStyle: TextStyle(color: logorenk, fontWeight: FontWeight.w800,fontSize: 14))),
                                TextSpan(text: " It's nice to be here and try the app! ", style: GoogleFonts.montserrat( textStyle: TextStyle(color: duztext, fontSize: 14))),
                                
        
                              ])),
  );
                       
}

 Widget ucnokta() {
  return Icon(Icons.more_vert_rounded, color:duztext, );
}

Widget KullaniciAdi() {
  return RichText(text: TextSpan(children:[
                              TextSpan(text:"fluttercoder ", style:GoogleFonts.montserrat( textStyle:  TextStyle(fontWeight: FontWeight.w700, color: duztext,fontSize: 15 ) )),
                              TextSpan(text:"@fluttercoder1 ·", style: GoogleFonts.montserrat( textStyle: TextStyle(fontWeight: FontWeight.w300, color: duztext.withOpacity(0.7),fontSize: 15 ) )),
                              TextSpan(text:" 2min", style: GoogleFonts.montserrat( textStyle:  TextStyle(fontWeight: FontWeight.w300, color: duztext.withOpacity(0.7),fontSize: 15 ) )),
                              
                              ] ));
      
}

Widget ProfilResmi() {
  double b = (0.1 ).toDouble();
   return Padding( //profil resmi
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                      
                      children:<Widget>[ Container(
                    
                       width: MediaQuery.of(context).size.width*b,
                       height: 40,
                       decoration: BoxDecoration(
                          
                         shape: BoxShape.circle,
                         image: DecorationImage(image: NetworkImage(People[3]['img']),fit: BoxFit.cover,)
                          
                       ),
                          
                      ),
                      
                      ]
                    ),
                  ),
                );
}





GeneratePOST(){

 return Column(
   children: <Widget>[ 
     Row( //profil resmi, isim, 3  nokta burada
              
                
              
                children:<Widget>[
        
                  
        
                  Column( //kullanıcı adı
 
                  
                    
        
                      children: <Widget>[
        
                        Container(
                          
                          child: Row(
                         
        
                            children: <Widget>[
        
                              ProfilResmi(),
        
                              Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget>[ 
                                
                                KullaniciAdi(),
                                SizedBox(height:3),
 
                                Contenttweet(),
                                SizedBox(height: 10,),

                                Container(

                               
                                  width: MediaQuery.of(context).size.width*(0.8).toDouble(),
                                  
                                  child: Image.asset('lib/img/post.jpg')
                                ),
 
                                SizedBox(height: 10,),
 
                                Begengec(),
 
                   
                                
                              
                              
                              ]),
                              
 
                             // ucnokta(), //3 nokta ikon
 
        
                            ],
        
                          ),
                        ),
 
        
                      ],
        
                  ),
                  
 
        
                ],
        
              ),
              
              SizedBox(height: 16,),

              Divider(height: 10, color: duztext.withOpacity(0.5),),
              SizedBox(height: 8,),
              
              ]
 
     

 );




}
}



 
