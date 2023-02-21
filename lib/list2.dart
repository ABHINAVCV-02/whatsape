import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  var list1 = [
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1635324236775-868d3680b65f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZWxvbiUyMG11c2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1602359337719-a8bcbd1f7b51?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YW1hem9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1594025149461-6338fc34e3f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amlvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://media.istockphoto.com/id/1217711326/photo/coal-loader-in-newcastle-australia.jpg?b=1&s=170667a&w=0&k=20&c=YfTSLO_bUweuW2FEGiZFaO_iRgJp0XR60QvsUUWeSYA='),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'data:image/png;base64,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'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzV8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzl8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
    ),
  ];
  var list2 = [
    const Text('elone musk'),
    const Text('jeff bazuz'),
    const Text('zucker'),
    const Text('mukashambani'),
    const Text('adani'),
    const Text('kerala start up mission'),
    const Text('Huyahin'),
    const Text('BTS ARMY'),
  ];
  var list3 = [
    const Text('Flutter is cool'),
    const Text('Coding is amazing'),
    const Text('Good morning'),
    const Text('Hello sir'),
    const Text('Welcome to kochi'),
    const Text('Nice to meet you,have a nice day!'),
    const Text('Very crazy friend'),
    const Text('Good night,sweet dreams'),
  ];
  var list4 = [
    const Text('12:00 pm'),
    const Text('Yesterday'),
    const Text('7:46 pm'),
    const Text('Yesterday'),
    const Text('2/22/20'),
    const Text('12:37 am'),
    const Text('Yesterday'),
    const Text('7:50 am'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext, index) {
              return Container(
                  child: ListTile(
                    leading: list1[index],
                    title: list2[index],
                    subtitle: list3[index],
                    trailing: list4[index],
                  ));
            }));
  }
}