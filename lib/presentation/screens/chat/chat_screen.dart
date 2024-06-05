import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.ftij1-2.fna.fbcdn.net/v/t39.30808-6/443712970_3707351806174301_8285376178435637054_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHyrruLiB3m3uhKy-hM4EwIMz7ZALkTzRczPtkAuRPNF32DAPSGu04KnbUcKN1hYvxvq-r283oRU2V_xVLYViIR&_nc_ohc=5OeuLQXxFnsQ7kNvgHHUAt4&_nc_ht=scontent.ftij1-2.fna&cb_e2o_trans=t&oh=00_AYCqItx0qwnNtogRLPfSiDDdhJYpELO76KKDh-Zgz4QlXw&oe=666574F2'),
          ),
        ),
        title: const Text('Liz'),
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => index % 2 == 0
                      ? const HerMessageBubble()
                      : const MyMessageBubble())),
          
          // Caja de texto
          const MessageFieldBox(),
        ],
      )),
    );
  }
}
