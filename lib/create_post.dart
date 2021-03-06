import 'dart:html';

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({ Key? key }) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Create new post',
        style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          TextButton(onPressed: (){}, child: const Text('Submit')),
        ],
      ),
      body:ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Select picture'),
          const SizedBox(height: 8,
          ),
        InkWell(
          onTap: (){
            showModalBottomSheet(context: context, builder: (context){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton.icon(onPressed: (){}, icon:Icon (UniconsLine.camera), label:const Text('Select from camera'),
                ),
                const Divider(),
                TextButton.icon(onPressed: (){}, icon:const Icon(UniconsLine.picture), label: const Text('Select from galery'),
                ),
              ],
            );
            });
          },
            child: Image.asset('assets/PNG image.png',height: 200,width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ) ,
    );
    
  }
}