import 'package:al_fatiha_task/presentation/bloc/chat/chat_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          final ChatBloc bloc = BlocProvider.of<ChatBloc>(context);
          return SafeArea(
            child: Scaffold(
              backgroundColor: Color(0xffF5F7F9),
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // #back_button
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: MaterialButton(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      color: Colors.white,
                      elevation: 0,
                      onPressed: () {
                        // todo code
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios, size: 18, color: Colors.black),
                          Spacer(),
                          Text('Fotiha surasi', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffF5F7F9),
                            ),
                            child: Column(
                              children: [
                                // #youtube_video_player
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: YoutubePlayer(
                                    controller: bloc.videoController,
                                    bottomActions: [
                                      CurrentPosition(),
                                      const SizedBox(width: 10.0),
                                      ProgressBar(isExpanded: true, colors: ProgressBarColors(playedColor: Colors.red, handleColor: Colors.red,),),
                                      const SizedBox(width: 10.0),
                                      RemainingDuration(),
                                      const SizedBox(width: 5.0),
                                      PlaybackSpeedButton(),
                                      const SizedBox(width: 5.0),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8),

                                // #text
                                Text(
                                  'Fotiha surasida yo‘l qo‘yilishi mumkin bo‘lgan xatolar',
                                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),


                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(33), topRight: Radius.circular(33)),
                    ),
                    child: Container(
                      height: 64,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5FD),
                        borderRadius: BorderRadius.circular(64)
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Text('Qiroatni tekshirish...', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xff939EC5))),
                          Spacer(),
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              // todo code
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff30BF77),
                                borderRadius: BorderRadius.circular(48),
                              ),
                              height: 40,
                              child: Row(
                                children: [
                                  SizedBox(width: 16),
                                  Text('Qiroat qilish', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                                  SizedBox(width: 12),
                                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 17),
                                  SizedBox(width: 14),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      ) ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
