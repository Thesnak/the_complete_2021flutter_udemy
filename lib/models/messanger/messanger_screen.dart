import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/225683583_1179218502583407_5938161885417296090_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=sgf-lO5fZFMAX8FWBBf&_nc_ht=scontent-hbe1-1.xx&oh=3d51f76d3458772b3dada150258ef5d4&oe=614D00E9"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        actions: [
          IconButton(icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              size: 16.0,
              color: Colors.white,
            ),
          ), onPressed: (){}),
          IconButton(icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.edit,
              size: 16.0,
              color: Colors.white,
            ),
          ), onPressed: (){}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white10,
                ),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    )

                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 110.0,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return buildStoryItems();
                    },
                  separatorBuilder: (context,index)=>SizedBox(width: 20.0,),
                  itemCount: 7,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
               ListView.separated(
                 physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder: (context,index)=>buildChatItem(),
                    separatorBuilder: (context,index)=>SizedBox(height: 20.0,),
                    itemCount: 7),
            ],
          ),
        ),
      ),
    );}

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage("https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/225683583_1179218502583407_5938161885417296090_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=sgf-lO5fZFMAX8FWBBf&_nc_ht=scontent-hbe1-1.xx&oh=3d51f76d3458772b3dada150258ef5d4&oe=614D00E9"),
          ),

          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 5.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),

        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mohamed Abu Obaida",
              style: TextStyle(fontSize: 16.0,
                  fontWeight: FontWeight.bold,color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "انا تمرة الاحباب حنظلة العدا",
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                    "2:00pm",style: TextStyle(color: Colors.white),

                )

              ],
            )
          ],
        ),
      )

    ],
  );
  Widget buildStoryItems()=>Container(
    width: 65.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage("https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/225683583_1179218502583407_5938161885417296090_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=sgf-lO5fZFMAX8FWBBf&_nc_ht=scontent-hbe1-1.xx&oh=3d51f76d3458772b3dada150258ef5d4&oe=614D00E9"),
            ),

            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 5.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Mohamed Abu Obaida",
          style: TextStyle(color: Colors.white),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )

      ],
    ),
  );


}
