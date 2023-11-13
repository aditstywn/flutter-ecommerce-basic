import 'package:flutter/material.dart';

import '../../common/constant/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Chat'),
        centerTitle: true,
        backgroundColor: ColorName.appBar,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/orang.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Isi Pesannnnnnnnn',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
