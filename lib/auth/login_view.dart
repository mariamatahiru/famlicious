import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body:SafeArea(child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(18)),
            Image.asset('assets/berry.png',
            height: 40,
            width: 150,
            ),
            const SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(label: Text('Email')),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(label: Text('Password')),
            ),
            const SizedBox(height: 15,),
            Align(alignment: Alignment.centerRight,child: Text('Forget password',
            style: TextStyle(color: Colors.grey),
            ),),
            TextButton(onPressed: (){}, child: Text('Login',
            style: Theme.of(context).textTheme.bodyText1!
            .copyWith(color: Theme.of(context).buttonTheme.colorScheme!.primary),
            ),
            style: TextButton.styleFrom(backgroundColor: Theme.of(context).buttonTheme.colorScheme!.background),
            ),
            Align(alignment: Alignment.centerRight,
            child:TextButton(onPressed: (){}, child:const 
             Text('Create Account',
            style: TextStyle(color: Colors.grey),
            ),
            ),
            
              
        ),
           ] ) ),
        );
        
    
  }
}