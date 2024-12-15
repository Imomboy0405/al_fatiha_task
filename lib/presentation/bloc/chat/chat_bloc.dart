import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  bool playVideo = false;
  bool playSound = false;
  bool playVoice = false;

  ChatBloc() : super(ChatInitialState()) {
    on<PlayVideoEvent>(pressPlayVideo);
    on<RecitationEvent>(pressRecitation);
    on<VoiceRecordingEvent>(pressVoiceRecording);
    on<DeleteVoiceEvent>(pressDeleteVoice);
    on<PlayVoiceEvent>(pressPlayVoice);
    on<PlaySoundEvent>(pressPlaySound);
  }

  void pressPlayVideo(PlayVideoEvent event, Emitter<ChatState> emit) {}

  void pressRecitation(RecitationEvent event, Emitter<ChatState> emit) {}

  void pressVoiceRecording(VoiceRecordingEvent event, Emitter<ChatState> emit) {}

  void pressDeleteVoice(DeleteVoiceEvent event, Emitter<ChatState> emit) {}

  void pressPlayVoice(PlayVoiceEvent event, Emitter<ChatState> emit) {}

  void pressPlaySound(PlaySoundEvent event, Emitter<ChatState> emit) {}
}