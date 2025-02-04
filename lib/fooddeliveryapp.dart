import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class page1 extends StatefulWidget {
  page1({super.key});


  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {

  List<String> households=["detergants","house holds","drinks","fairness creams","fruits and vegetables","detergant","house holds","drinks","fairness creams","fruits and vegetables",];
  List<String> cart=["1.jpg","house.png","images (8).jfif","images (10).jfif","images (7).jfif","1.jpg","house.png","images (8).jfif","images (10).jfif","images (7).jfif"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        leading:Icon(CupertinoIcons.line_horizontal_3,size: 30,color: Colors.white,),
        title:  Text("delivery location\nnesto,west fort,thrissur",style: TextStyle(color: Colors.white,fontSize: 18),),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(CupertinoIcons.heart_fill,color: Colors.white,),
        ),SizedBox(width: 20,),Icon(CupertinoIcons.cart,color: Colors.white,)],
        bottom: PreferredSize(preferredSize: Size.fromHeight(10),
            child: Container(
              color: Colors.white,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'search',
                ),
              ),
            ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 800,
              height: 230,
              decoration: BoxDecoration(image:
              DecorationImage(image:
              AssetImage("assets/images/pexels-photo-3962285.jpeg"),fit: BoxFit.fill),),

            ),
            GridView.builder(
              padding: EdgeInsets.all(5),
              shrinkWrap: true,
              physics:NeverScrollableScrollPhysics(),
               itemCount: cart.length,

              gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 5,childAspectRatio: 1/1.3), itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                alignment: Alignment.topCenter,
                child: Container(
                  child: Column(children: [
                    Image(image: AssetImage("assets/images/${cart[index]}")),
                    SizedBox(height: 5,),
                    Text("${households[index]}",style: TextStyle(fontSize: 15),),
                    SizedBox(height: 5,),
                    TextButton(onPressed: () {
                    }, child:  Text("upto 20% offer",style: TextStyle(color: Colors.green),),
                      style:TextButton.styleFrom
                        (side: BorderSide(color: Colors.green),
                        foregroundColor: Colors.green,),),],),
                ),
              );
            },)
          ],

        ),
      ),
    );
  }
}
