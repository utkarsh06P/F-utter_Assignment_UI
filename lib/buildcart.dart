import 'package:flutter/material.dart';
import 'package:flutterassignment/main.dart';

class new_page extends StatefulWidget {
  const new_page({Key? key}) : super(key: key);

  @override
  _new_pageState createState() => _new_pageState();
}

class _new_pageState extends State<new_page> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  var slidervalue = 0.0;



  @override
  void initState()
  {
    animationController = AnimationController(vsync: this , duration:  Duration(milliseconds: 1000));
    animationController.forward();
    super.initState();
  }

  @override
  void dispose()
  {
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height - 20,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue.shade900
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.35,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.90 - 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: Color(0xFFFF0F8FE),
                    ),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height*0.35 + 25,
                child:
                Container(
                  height: (MediaQuery.of(context).size.height*0.25) + 25,
                  width: MediaQuery.of(context).size.height*0.25,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24.0 , 5, 0 , 0),
                    child: Text('Intensity',
                      style: TextStyle(
                          fontFamily: 'varela',
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.45 + 25,
                child:
                Container(
                  height: (MediaQuery.of(context).size.height*0.25) + 25,
                  width: MediaQuery.of(context).size.height*0.25,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24.0 , 5, 0 , 0),
                    child: Text('Colors',
                      style: TextStyle(
                          fontFamily: 'varela',
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.50 + 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  <Widget>[
                      SlideTransition(
                        position: Tween<Offset>(
                          begin:const Offset( - 1 , 0),
                          end: Offset.zero,
                        ).animate(animationController),
                        child: FadeTransition(
                          opacity: animationController,
                          child: Container(
                            margin: const EdgeInsets.only(left: 24 , top: 5),
                            child: const CircleAvatar(
                            backgroundColor: Colors.orange,
                              radius: 14,
                            ),
                          ),
                        ),
                      ),
                      SlideTransition(
                        position: Tween<Offset>(
                          begin:const Offset( - 1 , 0),
                          end: Offset.zero,
                        ).animate(animationController),
                        child: FadeTransition(
                          opacity: animationController,
                          child: Container(
                            margin: const EdgeInsets.only(left: 24 , top: 5),
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 14,
                            ),
                          ),
                        ),
                      ),
                      SlideTransition(
                        position: Tween<Offset>(
                          begin:const Offset( - 1 , 0),
                          end: Offset.zero,
                        ).animate(animationController),
                        child: FadeTransition(
                          opacity: animationController,
                          child: Container(
                            margin: const EdgeInsets.only(left: 24 , top: 10),
                            child: const CircleAvatar(
                              backgroundColor: Colors.lightBlueAccent,
                              radius: 14,
                            ),
                          ),
                        ),
                      ),
                      SlideTransition(
                        position: Tween<Offset>(
                          begin:const Offset( - 1 , 0),
                          end: Offset.zero,
                        ).animate(animationController),
                        child: FadeTransition(
                          opacity: animationController,
                          child: Container(
                            margin: const EdgeInsets.only(left: 24 , top: 5),
                            child: const CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 14,
                            ),
                          ),
                        ),
                      ),
                      SlideTransition(
                        position: Tween<Offset>(
                          begin:const Offset( - 1 , 0),
                          end: Offset.zero,
                        ).animate(animationController),
                        child: FadeTransition(
                          opacity: animationController,
                          child: Container(
                            margin: const EdgeInsets.only(left: 24 , top: 5),
                            child: const CircleAvatar(
                              backgroundColor: Colors.pink,
                              radius: 14,
                            ),
                          ),
                        ),
                      ),
                      SlideTransition(
                        position: Tween<Offset>(
                          begin:const Offset( - 1 , 0),
                          end: Offset.zero,
                        ).animate(animationController),
                        child: FadeTransition(
                          opacity: animationController,
                          child: Container(
                            margin: const EdgeInsets.only(left: 24 , top: 5),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.add),
                              radius: 14,
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.55 + 25,
                child:
                Container(
                  height: (MediaQuery.of(context).size.height*0.25) + 25,
                  width: MediaQuery.of(context).size.height*0.25,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24.0 , 5, 0 , 0),
                    child: Text('Scenes',
                      style: TextStyle(
                          fontFamily: 'varela',
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top:MediaQuery.of(context).size.height*0.60 + 25,
                  child: Container(
                    margin: const EdgeInsets.only(left: 24 ),
                    height: (MediaQuery.of(context).size.height*0.25) + 45,
                    width: MediaQuery.of(context).size.width*0.60 + 60,

                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      children: [
                        Container(
                          height: (MediaQuery.of(context).size.height*0.25),
                          width: MediaQuery.of(context).size.width*0.25,
                          margin: const EdgeInsets.all(8),

                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin:const Offset( - 1 , 0),
                              end: Offset.zero,
                            ).animate(animationController),
                            child: FadeTransition(
                              opacity: animationController,
                              child: Card(
                                color: Colors.deepOrangeAccent,
                                margin: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.light_mode_outlined , color: Colors.white,),
                                    ),
                                    Text('Birthday' ,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SlideTransition(
                          position: Tween<Offset>(
                            begin:const Offset( - 1 , 0),
                            end: Offset.zero,
                          ).animate(animationController),
                          child: FadeTransition(
                            opacity: animationController,
                            child: Container(
                              height: (MediaQuery.of(context).size.height*0.25),
                              width: MediaQuery.of(context).size.width*0.25,
                              margin: const EdgeInsets.all(8),

                              child: Card(
                                color: Colors.deepPurple,
                                margin: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.light_mode_outlined , color: Colors.white,),
                                    ),
                                    Text('Party' ,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SlideTransition(
                          position: Tween<Offset>(
                            begin:const Offset( - 1 , 0),
                            end: Offset.zero,
                          ).animate(animationController),
                          child: FadeTransition(
                            opacity: animationController,
                            child: Container(
                              height: (MediaQuery.of(context).size.height*0.25),
                              width: MediaQuery.of(context).size.width*0.25,
                              margin: const EdgeInsets.all(8),

                              child: Card(
                                color: Colors.lightBlueAccent,
                                margin: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.light_mode_outlined , color: Colors.white,),
                                    ),
                                    Text('Relax' ,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: (MediaQuery.of(context).size.height*0.25),
                          width: MediaQuery.of(context).size.width*0.25,
                          margin: const EdgeInsets.all(8),

                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin:const Offset( - 1 , 0),
                              end: Offset.zero,
                            ).animate(animationController),
                            child: FadeTransition(
                              opacity: animationController,
                              child: Card(
                                color: Colors.green,
                                margin: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.light_mode_outlined , color: Colors.white,),
                                    ),
                                    Text('Fun' ,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                ),
              ),
              Positioned(
                  top: 20,
                  left: 15,
                  child:Container(
                    height: 300,
                    width: 150,
                    child: Column(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(2 , 30 , 0  , 0),
                          child: Text('Bed ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2 , 1, 0 , 0),
                          child: Text('Room',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2 , 1, 0 , 0),
                          child: Text('4 Lights',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ],
                    ),
              )
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.20 + 25,
                  left: 15,
                  child: Container(
                    height: (MediaQuery.of(context).size.height*0.25) - 125,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Card(
                          child: InkWell(

                            child: Row(
                              children: const <Widget>[
                                Icon(Icons.lightbulb),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text( 'Main Light',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.blue,
                          child: InkWell(

                            child: Row(
                              children: const <Widget>[
                                Icon(Icons.desktop_mac),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text( 'Desk Lights',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: InkWell(

                            child: Row(
                              children: const <Widget>[
                                Icon(Icons.bed),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text( 'Bed Lights',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),),
              Positioned(
                  top:  MediaQuery.of(context).size.height*0.32,
                  left: 315,
                  child: Container(
                    margin: const EdgeInsets.only(left: 24 , top: 10),
                    child: const CircleAvatar(
                      child: Icon(Icons.settings_power_sharp , color: Colors.red,),
                      backgroundColor: Colors.white,
                      radius: 20,
                    ),
                  ),),
              Positioned(
                top:  MediaQuery.of(context).size.height*0.43,
                child: Container(
                  height: (MediaQuery.of(context).size.height*0.25) - 155,
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    children: <Widget>[
                      const Padding(
                         padding:  EdgeInsets.only(left: 24.0),
                         child:  Icon(Icons.light_mode_outlined , color: Colors.grey, ),
                       ),
                       Padding(
                         padding:const EdgeInsets.all(8),
                         child: Container(
                           height: (MediaQuery.of(context).size.height*0.25) - 155,
                           width: MediaQuery.of(context).size.width*0.7,
                           child: Slider(
                             min: 0.0,
                             max: 5.0,
                             divisions: 5,
                             value: slidervalue,
                             activeColor: Colors.yellow,
                             inactiveColor: Colors.grey,
                             onChanged: (newValue)
                             {
                               setState(() {
                                 slidervalue = newValue;
                               });
                             },
                           ),
                         ),
                       ),
                     const Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Icon(Icons.light_mode_outlined , color: Colors.yellow,),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
