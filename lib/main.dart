import 'package:flutter/material.dart';
import 'package:vcardnavigator/second.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff40739e),
      appBar: AppBar(
        backgroundColor: Color(0xff487eb0),
        title: const Center(child: Text('Vcard',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),)),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/12.jpg'),
              radius: 100,
            ),
            Text('Shawon Hasan',style: TextStyle(
              fontSize: 35,fontWeight: FontWeight.bold
            ),),
            Divider(
              height: 3,
            ),
            Card(
              margin: EdgeInsets.all(20),

              child: ListTile(
                onTap: (){

                },
                title: Text('johnmith234@gmail.com'),
                leading: Icon(Icons.email,color: Colors.black38,),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                onTap: (){},
                title: Text('+1 23247239'),
                leading: Icon(Icons.phone,color: Colors.black38,),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                onTap: (){},
                title: Text('New York , America'),
                leading: Icon(Icons.home_outlined,color: Colors.black38,),
              ),
            ),


            const SizedBox(height: 30),
            ElevatedButton(

              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              child: const Text('See more'),
            ),
          ],
        ),
      ),
    );
  }
}