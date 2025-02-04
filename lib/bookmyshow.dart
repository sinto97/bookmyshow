import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
   page2({super.key});
   List<String> add=["movie1.webp","movie2.avif","images (11).jfif"];
   List<String> movie=["images (12).jfif","images (13).jfif","images (14).jfif"];
   List<String> name=["anpodu kanmani","barooz"];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("it all starts here!",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
        bottom: PreferredSize(preferredSize: Size.fromHeight(0), child: Row(
          children: [TextButton(onPressed:  () {

          }, child: Text("kochi",style:
          TextStyle(color: Colors.red),
            textAlign: TextAlign.start,)),Icon(Icons.arrow_right,color: Colors.red,),
          ],
        ),
        ),
        actions: [Icon(Icons.search,size: 30,),SizedBox(width: 20,),Icon(CupertinoIcons.bell),SizedBox(width: 20,),Icon(CupertinoIcons.qrcode)],
        toolbarHeight: 80,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width:double.infinity,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width -20,
                      decoration: BoxDecoration(image: DecorationImage(image:  AssetImage("assets/images/${add[index]}"),fit: BoxFit.fill)),
                    );
              }, separatorBuilder: (context, index) {
                return SizedBox(width:10,);
              }, itemCount: add.length),
            ),
            SizedBox(height: 20,),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              height: 300,
              width: 350,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
               // shrinkWrap: true,
                  itemBuilder: (context, index) {
                return
                   // Stack(
                   //   alignment: Alignment.topLeft,
                   //  children: [
                   //
                   //    Positioned(
                   //        top: 40,
                   //        left: 50,
                   //        child: Text("pick up where you left"))
                   //  ],
                   // );
                    Container(
                      height: 220,
                      width: 350,
                       padding: EdgeInsets.all(20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("pick up where you left off",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                           SizedBox(height: 10,),
                           Row(children: [
                             ClipRRect(borderRadius: BorderRadius.circular(20),
                             child: Image(image: AssetImage("assets/images/${movie[index]}"),fit: BoxFit.fill,width: 100,height: 140,),),
                             SizedBox(width: 5,),
                             Column(
                               children: [
                                 Text("${name[index]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                 Text("Rating 9.1 (101 votes)"),
                                 SizedBox(height: 5),
                                 Text("Now showing in "),
                                 Text("15 cinemas in kochi",style: TextStyle(fontWeight: FontWeight.bold),),
                                 Text("Ticket starting from 120",style:  TextStyle(color: Colors.orange),)
                               ],
                             )
                           ],),SizedBox(height:20,),
                           Container(
                             margin: EdgeInsets.only(left: 10),
                             width: 250,
                             height: 40,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                             child: TextButton(
                                 onPressed: () {
                             }, child: Text("Resume Booking",style: TextStyle(color: Colors.white,fontSize: 20,))),alignment: Alignment.center,
                           )
                         ],
                       ),
                    );
              }, separatorBuilder: (context, index) {
                return SizedBox(width: 10,);
              }, itemCount: 2),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommended Movies",style:TextStyle(fontSize: 20),),
                TextButton(onPressed: () {
                }, child: Text("see all",style: TextStyle(color: Colors.red),),)
            ],),
            ListView.separated(itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 150,
                    height: 250,
                    color: Colors.red,
                    child: Image(image: AssetImage("assets/images/movie2.avif"),fit: BoxFit.cover,),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.star_fill,color: Colors.red,),
                        SizedBox(width:1,),
                        Text("8.5"),
                        SizedBox(width: 5,),
                        Text("106.2k votes")
                      ],
                    ),
                  )
                ],
              );

            }, separatorBuilder: (context, index) {
              return SizedBox();

            }, itemCount: 1),

            SizedBox(height: 50,)

          ],
        ),
      ),
    );
  }
}
