
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';

class DetailScreen extends StatelessWidget {

  var carName;

  DetailScreen(this.carName);

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff1756CC), //or set color with: Color(0xFF0000FF)
    ));

    final carImg=['images/truck.png','images/mercedes.png','images/audi.png','images/truck.png','images/mercedes.png','images/audi.png','images/truck.png','images/mercedes.png','images/audi.png'];

    return SafeArea(
      child: Scaffold(
        body:  Stack(
          children: [
            Container(
              color: Color(0xff1756CC),
            ),

            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [


                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.bar_chart,
                          color: Colors.white,)

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(carName,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ],
                      ),
                    ),

                    Container(
                      height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: CarouselSlider(
                          options: CarouselOptions(),
                          items: carImg.map((item) => Container(
                            child: Center(
                                child: Image.asset(item, fit: BoxFit.fitWidth,height: 120,)
                            ),
                          )).toList(),
                        )
                    ),

                    WormIndicator(
                      length: carImg.length,
                      color: Colors.grey,
                      indicatorColor: Colors.white,
                      controller: _controller,
                      shape: Shape(
                          size: 6,
                          spacing: 5,
                          shape: DotShape.Circle  // Similar for Square
                      ),
                    ),

                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 0.5),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.category,
                                        color: Colors.white,
                                        ),
                                        SizedBox(height: 10,),
                                        Text('v10.2.zl',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                        ),
                                        SizedBox(height: 6,),
                                        Text('620hp',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 0.5),
                                  borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.event_seat,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 10,),
                                        Text('2 Seats',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(height: 6,),
                                        Text('')

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 0.5),
                                  borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.speed,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 10,),
                                        Text('0-100 kph',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(height: 6,),
                                        Text('32 s',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 0.5),
                                  borderRadius: BorderRadius.all(Radius.circular(12),)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.category,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 10,),
                                        Text('v10.2.zl',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(height: 6,),
                                        Text('620hp',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 0.5),
                                  borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.event_seat,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 10,),
                                        Text('2 Seats',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(height: 6,),
                                        Text('')

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(

                            ),
                          ),
                        ),
                      ],
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 0.5),
                                  borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(12)),
                                            color: Colors.amber
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Hertz',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text('Hertz',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                            ),
                                            ),
                                            Text('Miami-Beach-South Beach',
                                            style: TextStyle(
                                              color: Colors.white
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),

                                    Text('Mon-Sun 8:00AM-8:30PM',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('340/day',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              color: Color(0xff37393E)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text('Rent Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),




                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
