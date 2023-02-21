import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  var list1 = [
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1597586124394-fbd6ef244026?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE4fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTIxfHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMwfHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1563584316028-2b70b3a3a8bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM2fHxwZXJzb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    const Text('BTS ARMY'),
    const Text('ANDROSE'),
    const Text('Mukash ambani'),
    const Text('Daniyal bazuka'),
    const Text('milan kuptha'),
  ];
  var list3 = [
    Row(
      children:const [
        Icon(Icons.call_received, color: Colors.green),
        Text('Yesterday,18:40'),
      ],
    ),
    Row(
      children:const [
        Icon(Icons.call_received, color: Colors.green),
        Text('March24,18:26'),
      ],
    ),
    Row(
      children: const [
        Icon(Icons.call_received, color: Colors.green),
        Text('April19,14:06'),
      ],
    ),
    Row(
      children: const [
        Icon(Icons.call_received, color: Colors.green),
        Text('February20,21:33'),
      ],
    ),
    Row(
      children: const [
        Icon(Icons.call_received, color: Colors.green),
        Text('February20,20:30'),
      ],
    ),
  ];
  var list4 = [
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green),
    const Icon(Icons.phone, color: Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_call),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext, index) {
              return Container(
                  child: ListTile(
                      leading: list1[index],
                      title: list2[index],
                      subtitle: list3[index],
                      trailing: list4[index]));
            }));
  }
}