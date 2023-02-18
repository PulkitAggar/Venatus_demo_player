import 'package:flutter/material.dart';
import 'package:venatus_project/gclcodm.dart';
import 'package:venatus_project/psytix.dart';

class HomeScreenVenatus extends StatefulWidget {
  const HomeScreenVenatus({super.key});

  @override
  State<HomeScreenVenatus> createState() => _HomeScreenVenatusState();
}

class _HomeScreenVenatusState extends State<HomeScreenVenatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Clips', style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF4A4143),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Color(0xFFD9D9D9),),
              child: Column(
                children: [
                  ClipRect(
                    //borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/psytrix.png', height: 202, fit: BoxFit.cover)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: Row(
                      children: [
                        Text('Psytrix Codm Tournament', style: TextStyle(color: Color(0xFF373132), fontSize: 15),),
                        Expanded(child: SizedBox(width: 10,)),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => DemoApp())));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4A4143),
                          ), 
                          child: Text('Playlist'),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Color(0xFFD9D9D9),),
              child: Column(
                children: [
                  ClipRect(
                    //borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/GCL.png', height: 202, fit: BoxFit.cover)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: Row(
                      children: [
                        Text('GCL CODM', style: TextStyle(color: Color(0xFF373132), fontSize: 15),),
                        Expanded(child: SizedBox(width: 10,)),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DemoAppgcl()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4A4143),
                          ), 
                          child: Text('Playlist'),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}