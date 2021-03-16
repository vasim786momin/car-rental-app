import 'package:car_rental/detail_screen.dart';
import 'package:car_rental/utility/ThemeService.dart';
import 'package:car_rental/utility/Themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';


void main()async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
   // debugPaintSizeEnabled=true;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, //or set color with: Color(0xFF0000FF)
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // NOTE: Optional - use themeMode to specify the startup theme
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,


      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final carName=['Duster','Mercedes','Audi','Duster','Mercedes','Audi','Duster','Mercedes','Audi'];

    final carImg=['images/truck.png','images/mercedes.png','images/audi.png','images/truck.png','images/mercedes.png','images/audi.png','images/truck.png','images/mercedes.png','images/audi.png'];


    final delearName=['Hertz','Avis','Tesla','Hertz','Avis','Tesla','Hertz','Avis','Tesla'];
    final followers=['174','126','42','174','126','42','174','126','42',];
    final col=[Colors.amber,Colors.pinkAccent,Colors.grey[800],Colors.amber,Colors.pinkAccent,Colors.grey[800],Colors.amber,Colors.pinkAccent,Colors.grey[800]];

    return SafeArea(
      child: Scaffold(

        body: Stack(
          children: [
//            Container(
//            //  color: Colors.white70,
//            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Browse Cars",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        InkWell(
                          onTap: (){

                            if (Get.isDarkMode)
                              Get.changeThemeMode(ThemeMode.light);
                            else
                              Get.changeThemeMode(ThemeMode.dark);
                          },
                          child: Icon(
                            Icons.list,
                            color: Colors.grey,
                          ),
                        )

                      ],
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.all(8),
                      child: Card(
                        elevation: 20,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20,top: 10,right: 0,bottom: 10),
                                    border: InputBorder.none,
                                    labelText: 'Search',
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.search),
                                    )
                                ))),
                      )
                  ),

                  SizedBox(height: 15,),

                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Hot',
                              style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(text: ' deals',
                                  style: TextStyle(

                                      color: Colors.black45),

                                )
                              ]
                          ),
                        ),
                        Text('view all',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500
                          ),),
                      ],
                    ),
                  ),


                  Container(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      //shrinkWrap: true,
                      itemCount:carName.length ,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(carName[index])));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              //color: Colors.blue,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(carName[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        SizedBox(width: 20,),
                                        Text('340/day',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      carImg[index],
                                      height: 150,
                                      width: 150,

                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Details',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12
                                          ),),
                                      ),

                                      SizedBox(width: 40,),

                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                              color: Color(0xff37393E),
                                            ),
                                             // padding: EdgeInsets.all(2),

                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                                child: Text('Rent Now',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                              )
                                          ),
                                        ],
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),



                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Top',
                              style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(text: ' dealers',
                                  style: TextStyle(

                                      color: Colors.black45),

                                )
                              ]
                          ),
                        ),
                        Text('view all',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500
                          ),),
                      ],
                    ),
                  ),

                  Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:delearName.length ,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 8),
                          child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: col[index]
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                                      child: Row(

                                        children: [
                                          Text(delearName[index],
                                            style: TextStyle(
                                                color: Colors.white
                                            ),),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 6,),

                                  Text(delearName[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Text('${followers[index]} followers',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            )
          ],
        ),

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 2,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text(''),
              ),


              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today),
                title: new Text(''),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: new Text(''),
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: new Text(''),
            )
            ],
          ),
        ),
      ),
    );
  }
}
