import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
   page3({super.key});
  List<String> names=["D company movies","Film club","Anjal","Telegram","Anil"];
  List<String> namme2=["nun:attam 2023","heman:here is what i found","daa sugano","Login code","daa"];
  List<String> time=["8.32am","8.32pm","9.30 am","12.00pm","2.30pm"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text("Telegram",style: TextStyle(color: Colors.white,fontSize: 20),),
        actions: [Icon(Icons.search,color: Colors.white,)],
        iconTheme: IconThemeData(color: Colors.white),

      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[900],
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 200,
            child: DrawerHeader(

                child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.circle_outlined,color: Colors.blue,size: 80,),
                    Icon(CupertinoIcons.brightness,color: Colors.white,),
                  ],
                ),
                Text("Bravo125",style: TextStyle(color: Colors.white),),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1234548589",style: TextStyle(color: Colors.white),),
                    Icon(CupertinoIcons.arrow_down)
                  ],
                ),
              ],
            )),
          ),
          ListTile(title: Row(children: [
            Icon(CupertinoIcons.profile_circled,color: Colors.grey,),
            SizedBox(width: 10,),
            Text("My profile",style:  TextStyle(color: Colors.white),),
          ],),
          onTap: () {
          },),
          ListTile(title: Row(
            children: [
              Icon(Icons.group,color: Colors.grey,),
              SizedBox(width:10,),
              Text("New group",style: TextStyle(color: Colors.white),),
            ],
          ),
          onTap: () {
          },),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.person_outline_sharp,color: Colors.grey,),
                SizedBox(width: 10,),
                Text("Contacts",style: TextStyle(color: Colors.white),),
              ],
            ),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(title:
            Row(
              children: [
                Icon(Icons.call,color: Colors.grey,),
                SizedBox(width: 10,),
                Text("Calls",style: TextStyle(color: Colors.white),),
              ],
            ),),

          ListTile(title:
          Row(
            children: [
              Icon(Icons.message,color: Colors.grey,),
              SizedBox(width: 10,),
              Text("Saved messages",style: TextStyle(color: Colors.white),),
            ],
          ),),
          ListTile(title:
          Row(
            children: [
              Icon(Icons.settings,color: Colors.grey,),
              SizedBox(width: 10,),
              Text("Settings",style: TextStyle(color: Colors.white),),
            ],
          ),),
          ListTile(title:
          Row(
            children: [
              Icon(Icons.call,color: Colors.grey,),
              SizedBox(width: 10,),
              Text("Calls",style: TextStyle(color: Colors.white),),
            ],
          ),),
          Divider(),
          ListTile(title:
          Row(
            children: [
              Icon(CupertinoIcons.person_3_fill,color: Colors.grey,),
              SizedBox(width: 10,),
              Text("Invite friends",style: TextStyle(color: Colors.white),),
            ],
          ),),
          ListTile(title:
          Row(
            children: [
              Icon(CupertinoIcons.question,color: Colors.grey,),
              SizedBox(width: 10,),
              Text("Telegram features",style: TextStyle(color: Colors.white),),
            ],
          ),),
            ]
       )
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: ListView.separated(
           shrinkWrap: true,
            scrollDirection: Axis.vertical,

            itemBuilder: (context, index) {
             return ListTile(
               leading: ClipRRect(borderRadius: BorderRadius.circular(20),
                   child: Image(image:
                   NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLA994hpL3PMmq0scCuWOu0LGsjef49dyXVg&s"),
                     fit: BoxFit.cover,width: 50,height: 50,)),
               title: Text("${names[index]}",style: TextStyle(color: Colors.white,),),
               subtitle: Text("${namme2[index]}",style: TextStyle(color: Colors.white),),
               trailing: Column(children: [
                 Text("${time[index]}",style: TextStyle(color: Colors.white),),
                 Icon(Icons.circle_outlined,color: Colors.white,)
               ],),
               
             );

        }, separatorBuilder: (context, index) {
          return Divider(color: Colors.grey,thickness: 1,height: 0,);

        }, itemCount: 5),


      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blue,
             shape: CircleBorder(),
            onPressed: () {
            
          },
          child: Icon(CupertinoIcons.pen,color: Colors.white,),)


        ],
      )
    );
  }
}
