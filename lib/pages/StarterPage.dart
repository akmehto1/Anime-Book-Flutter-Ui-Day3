import 'package:day3/fadeAnimation/fadeAnimation.dart';
import 'package:day3/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';


class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage>  with TickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double>_animation;
  bool _textVisible=true;

  onTab(){
   print("tab");

   _animationController.forward().then((f)=>
       Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomePAge()))
   );

  }

  @override
  void initState() {
    // TODO: implement initState
    _animationController=AnimationController(vsync:this,duration:const Duration(milliseconds:100));
    _animation=Tween<double>(
      begin:0.0,
      end:25.0
    ).animate(_animationController);
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:const Color.fromRGBO(147, 77, 37, .9),
        title:const Text("Delivery",style:TextStyle(color:Colors.white),),
      ),
      body:Container(
        width:double.infinity,
        decoration:const BoxDecoration(
            image:DecorationImage(
                fit:BoxFit.cover,
                image:AssetImage("assets/images/three.jpg")
            )
        ),
        child:Container(
          decoration:BoxDecoration(
              gradient:LinearGradient(
                  begin:Alignment.bottomRight,
                  colors:[
                    Colors.black26.withOpacity(.9),
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.5)
                  ]
              )
          ),


          child:Padding(
            padding:const EdgeInsets.all(20.0),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Taking Order \nfor Delivery",style:TextStyle(fontSize:50.0,color:Colors.white,height:1.2,fontWeight:FontWeight.bold),).animate()
                    .fade(duration: 500.ms) .fadeIn().slideX(),
                const SizedBox(height:20,),
                const Text("See resturants nearby by\nadding location",style:TextStyle(fontSize:20,color:Colors.white),).animate().fade(duration: 520.ms) .fadeIn().slide(),
                const SizedBox(height:70,),
              Container(
                  height:50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            colors: [
                              Colors.yellow.withOpacity(.9),
                              Colors.orange.withOpacity(.8)
                            ]
                        )
                    ),
                    child: MaterialButton(
                      onPressed: onTab,
                      minWidth: double.infinity,
                      child: const Text(
                        "Start",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    )
                  ).animate().fade(duration: 500.ms) .fadeIn().slideX(),
                const SizedBox(height:30,),
                 Align(child:Text("Now Deliver To Your Door 24/7",style:TextStyle(color:Colors.white70),),).animate().fade(duration: 540.ms) .fadeIn(),
              ],
            ),
          ),

        ),
      ),

    );
  }
}
