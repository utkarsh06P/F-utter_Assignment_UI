import 'package:flutter/material.dart';
import 'package:flutterassignment/buildcart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home:controlpanel(),
    );
  }
}

class controlpanel extends StatefulWidget {
 const  controlpanel({Key? key}) : super(key: key);

  @override
  _controlpanelState createState() => _controlpanelState();
}

class _controlpanelState extends State<controlpanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height - 20,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue.shade900),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.15,
                  child: Container(
                      height: MediaQuery.of(context).size.height*0.80 - 20,
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
                  top: MediaQuery.of(context).size.height*0.15 + 25,
                  child:
                  Container(
                    height: (MediaQuery.of(context).size.height*0.25) + 25,
                    width: MediaQuery.of(context).size.height*0.25,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('All Rooms',
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
                top: MediaQuery.of(context).size.height*0.15 + 60,
                child: Container(
                  height: (MediaQuery.of(context).size.height) - 155,
                    width: MediaQuery.of(context).size.width,
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      children: [
                        Card(
                        child:InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => new_page()),);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('Assets/bed.svg'),
                            const  SizedBox(height: 10,),
                             const Text('Bed room',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const  SizedBox(height: 10,),
                              const Text('4 Lights',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        Card(
                          child:InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => new_page()),);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('Assets/bed.svg'),
                                const  SizedBox(height: 10,),
                                const Text('Living room',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const  SizedBox(height: 10,),
                                const Text('2 Lights',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                           margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        Card(
                          child:InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => new_page()),);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('Assets/bed.svg'),
                                const  SizedBox(height: 10,),
                                const Text('Kitchen',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const  SizedBox(height: 10,),
                                const Text('5 Lights',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                           margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        Card(
                          child:InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => new_page()),);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('Assets/bed.svg'),
                                const  SizedBox(height: 10,),
                                const Text('Bathroom',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const  SizedBox(height: 10,),
                                const Text('1 Light',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                           margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                        ),
                        Card(
                          child:InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => new_page()),);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('Assets/bed.svg'),
                                const  SizedBox(height: 10,),
                                const Text('Outdoor',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const  SizedBox(height: 10,),
                                const Text('5 Lights',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                           margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        Card(
                          child:InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => new_page()),);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('Assets/bed.svg'),
                                const  SizedBox(height: 10,),
                                const Text('Balcony',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const  SizedBox(height: 10,),
                                const Text('2 Lights',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                           margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),

                      ],
                  ),

                ),
              ),
            Positioned(
              top: 10.0,
                left: 15.0,
                child: Container(
                  height: 100,
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  <Widget>[
                      Column(
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0 , 10 , 0  , 0),
                            child: Text('Control',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0 , 1, 0 , 0),
                            child: Text('Panel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                     const Padding(
                       padding:  EdgeInsets.all(8.0),
                       child:  CircleAvatar(backgroundImage: AssetImage('Assets/users.svg'),
                       backgroundColor: Colors.white,
                         radius: 35,
                       ),
                     ),
                    ],
                  ),

                )

            ),

            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
     const BottomNavigationBarItem(icon: Icon(Icons.lightbulb),
      backgroundColor: Colors.blue,
      label: ' ',
       ),
        const BottomNavigationBarItem(icon: Icon(Icons.home),
          backgroundColor: Colors.blue,
            label: ' ',

          ),
        const  BottomNavigationBarItem(icon: Icon(Icons.settings),
          backgroundColor: Colors.blue,
            label: ' ',
          ),
        ],
      ),
    );
  }
}
