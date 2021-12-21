import 'dart:ui';

import 'package:familicious_app/create_post.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Timeline',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(builder:(context){
                  return const CreatePost();
                }));
                  },
              icon:Icon(
              UniconsLine.plus_square,
              color:Theme.of(context).iconTheme.color)
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Card(
            child: Column(
              children: [
                Card(
                  color: Theme.of(context).cardColor,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1633115384130-49f50dd42ff0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                        radius: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Jane Cooper',
                            style:Theme.of(context).textTheme .bodyText1!
                            .copyWith(fontSize: 18,fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          '1 minute ago',
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        
                      ],
                    ),
                    Icon(
                          Icons.more_horiz,
                          color : Theme.of(context).iconTheme.color,
                        ),
                  ],
                ),
                SizedBox(height: 15,),
                Text(
                  'That was the first time i flew out of singapore in three years',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1633114073758-c4be9aeb15ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                      width: MediaQuery.of(context).size.width,
                      height: 300,fit: BoxFit.cover,
                      ),
                ),          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10,),
                    Icon(UniconsLine.thumbs_up,color: Theme.of(context).iconTheme.color),
                    SizedBox(width: 10,),
                    Icon(UniconsLine.comment_lines,color:Theme.of(context).iconTheme.color),
                  ],
                ),
                SizedBox(height: 10,),
                Icon(UniconsLine.telegram_alt,color:Theme.of(context).iconTheme.color,)
              ],
            ),
              ],
            ),
          ),
          
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1633115384130-49f50dd42ff0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                        radius: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Annette Black',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          '1 hour ago',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Text(
                  'The two craziest years of my life -striking off item offer item on my bucket',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1640037002750-31a913cd05c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
                      width: MediaQuery.of(context).size.width,
                      height: 300,fit: BoxFit.cover,
                      ),
                ),          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up,color: Colors.black),
                    Icon(Icons.message,color: Colors.black),
                    Icon(Icons.person,color: Colors.black),
                  ],
                ),
                SizedBox(height: 10),
                Icon(Icons.person,color: Colors.black),
              ],
            ),
              ],
            ),
          ),

          
        ],

      ),
      
    );
  }
}
