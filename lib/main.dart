import 'package:flutter/material.dart';
import 'package:travelui/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      home: Home()
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/1.jpg"),fit: BoxFit.fitHeight)

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 200,),
              RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Travel",style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.w600,fontSize: 45,color: Colors.white,fontStyle: FontStyle.italic)),
                  TextSpan(text: "go",style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.w900,fontSize: 60,color: Colors.white))
                ]
              )),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                  
                },
                              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Text("Get Started",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              )
            ],
          ),
        ),
      
    );
  }
}