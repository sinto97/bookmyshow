import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
   page4({super.key});
  List<String> add=["images (21).jfif","images (22).jfif","images (23).jfif","images (24).png","1.png","images (21).jfif","images (22).jfif","images (23).jfif","images (24).png","1.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          height: 200,
          decoration:BoxDecoration(gradient: LinearGradient(colors: [Colors.blue,Colors.white],
              begin:Alignment.topCenter,end: Alignment.bottomCenter),),
          child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 30),
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/icon/flipcart/2249163.webp"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),color: Colors.yellow),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/icon/flipcart/images.png"),fit: BoxFit.cover,height: 40,),
                        Text("Travel",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/icon/flipcart/images (20).jfif"),fit: BoxFit.cover,height: 40,),
                        SizedBox(width: 5,),
                        Text("Pay",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,


                children: [
                   Padding(padding: EdgeInsets.only(left: 10,top: 40)),

                  Icon(Icons.home_filled),
                  SizedBox(width: 5,),
                  Text("kakkanad,kochi,ernakulam")
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Brand mall"),
                      SizedBox(height: 10,),
                      SizedBox(height:10 ,

                        child: Sw()
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 250,
                    height: 50,
                    child: TextField(

                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.search),
                         suffixIcon: Icon(CupertinoIcons.camera),

                         hintText: 'search',
                         fillColor: Colors.white,
                         filled: true,
                         enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 2.0))
                       ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        titleSpacing: 0,
        title:null,
      ),
      body:SingleChildScrollView(
       // padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 250,
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width-35,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20),image:
                DecorationImage(image: AssetImage("assets/shopping/${add[index]}"),fit: BoxFit.cover)),
              );
            },),

            ),
            SizedBox(height: 5,),
            SizedBox(height: 120,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                  itemBuilder: (context, index) {
                    return  InkWell(
                      onTap: () {
                        print("index: ${index}");
                      },
                      child: Container(
                        margin:EdgeInsets.all(10),
                        width: 80,
                        decoration:
                        BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/shopping/${add[1]}"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(40)),
                      ),
                    );
                  },),

              ),
            SizedBox(height: 10,),
            SizedBox(height: 350,
              child:GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 1/1.2,crossAxisCount: 3,crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                     // margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 10,
                        height: 50,
                        color: Colors.green,
                      ),
                    );
                  },
              )
            )
          ],
        ),
      ),
    );
  }
}
class Sw extends StatefulWidget {
   Sw({super.key});


  @override
  State<Sw> createState() => _SwState();
}

class _SwState extends State<Sw> {
  bool isOn=false;
  @override

  Widget build(BuildContext context) {
    return  Switch(value: isOn,
      activeColor: Colors.grey,
      inactiveThumbColor: Colors.white,

      onChanged: (value) {
      setState(() {
        isOn=value;
      });

    },);
  }
}

