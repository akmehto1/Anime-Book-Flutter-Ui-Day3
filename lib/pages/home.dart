import 'package:flutter/material.dart';

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.grey[100],
        elevation:0,
        leading:null,
        actions: [
          IconButton(onPressed:(){}, icon:const Icon(Icons.shopping_bag_sharp))
        ],
      ),
      body:SafeArea(
        child:Container(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Padding(
                padding:const EdgeInsets.symmetric(horizontal:20),
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10),child:Text("Food Delivery",style:TextStyle(color:Colors.grey[80],fontSize:30,fontWeight:FontWeight.bold),),),
                    Container(
                      height:70,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(50)
                      ),
                      margin:const EdgeInsets.symmetric(vertical:10),
                      child:ListView(
                        scrollDirection:Axis.horizontal,
                        children: [
                          makeCategory(isActive:true, title:"Pizza"),
                          makeCategory(isActive:true, title:"Burger"),
                          makeCategory(isActive:true, title:"Momos"),
                          makeCategory(isActive:true, title:"Chilli Patato"),
                        ],
                      ),
                    ),
                  ],
                )
              ),
             Padding(padding:EdgeInsets.symmetric(horizontal:24),child: const Text("Free Delivery",style:TextStyle(color:Colors.grey,fontSize:30),),),
              Expanded(child:Padding(
                padding:const EdgeInsets.symmetric(horizontal:0.0),
                child:ListView(
                  scrollDirection:Axis.horizontal,
                  children: [
                    makeItem(image:"assets/images/three.jpg"),
                    makeItem(image:"assets/images/three.jpg"),
                  ],
                ),
              )
              ),

          
            ],
          ),
        ),
      ),
    );
  }


  Widget makeCategory({isActive,title}){
    return AspectRatio(aspectRatio: isActive?2.6:2.4/1,
    child:Container(
      margin:const EdgeInsets.only(right:20),
      decoration:BoxDecoration(
        color:isActive?Colors.yellow[700]:Colors.white,
        borderRadius:BorderRadius.circular(50)
      ),
      child:Align(
        child:Text(title,style:TextStyle(color:isActive?Colors.white:Colors.grey[500]),),
      ),
    ),
    );
  }

  Widget makeItem({image}){
    return AspectRatio(
        aspectRatio:1/1.4,
        child:GestureDetector(
          child:Container(
margin:const EdgeInsets.all(25.0),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(20.0),
              image:const DecorationImage(
                fit:BoxFit.cover,
                image:AssetImage('assets/images/three.jpg')
              )
            ),
            child:Container(
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                gradient:LinearGradient(
                  begin:Alignment.bottomCenter,
                  colors:[
                    Colors.black26.withOpacity(.9),
                    Colors.black26.withOpacity(.3),
                  ]
                )
              ),
              child:const Padding(
                padding:EdgeInsets.all(10),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment:Alignment.topRight,
                      child:Icon(Icons.favorite,color:Colors.white,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("\$ 15.00",style:TextStyle(color:Colors.white,fontSize:40,fontWeight: FontWeight.bold),),
                       SizedBox(height:10,),
                       Text("Vageratain Pizza",style:TextStyle(color:Colors.white,fontSize:20))
                     ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }



}
