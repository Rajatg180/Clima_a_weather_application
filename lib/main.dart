import 'package:flutter/material.dart';
import 'package:weather_app/result_screen.dart';
import 'package:weather_app/spach_screen.dart';

void main() => runApp(StartingPage());
class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather app",
      
      theme: ThemeData.dark(
    
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
       body: 
        Container(
          
          padding: EdgeInsets.all(50),
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Image.asset("assets/starting.jpg"),
                SpachScreen(),
                Text(
                  "Clima",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50,
                    fontWeight: FontWeight.w500
                  ),
                ),
                
                Text(
                  "Discover the Weather in Your City",
                  textAlign: TextAlign.center,
                  
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap:  (){ 
                    
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>ResultScreen()));
                    },


                  child: Container(
                    
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                     borderRadius: BorderRadius.circular(50.0),
                    ),
                    width: double.infinity,
                    // child: RaisedButton(
                    //   color: Colors.blue,
                    //   textColor: Colors.white,
                    //   shape: StadiumBorder(),
                    //   onPressed: () {
                    //     Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) => const ResultScreen()));
                       
                    //   },
                    //   child: Text("Get Started"),
                    // ),
                    child: Center(
                      child: Text("Get Started",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
             
              ],
            ),
            
          ),
       );

  }
}