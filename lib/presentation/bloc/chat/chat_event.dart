part of 'chat_bloc.dart';

sealed class ChatEvent extends Equatable {
  const ChatEvent();
}

class PlayVideoEvent extends ChatEvent {
  @override
  List<Object?> get props => [];
}

class RecitationEvent extends ChatEvent {
  @override
  List<Object?> get props => [];
}

class VoiceRecordingEvent extends ChatEvent {
  final bool start;

  const VoiceRecordingEvent({required this.start});

  @override
  List<Object?> get props => [start];
}

class DeleteVoiceEvent extends ChatEvent {
  @override
  List<Object?> get props => [];
}

class PlayVoiceEvent extends ChatEvent {
  final bool start;

  const PlayVoiceEvent({required this.start});

  @override
  List<Object?> get props => [start];
}

class PlaySoundEvent extends ChatEvent {
  final bool start;

  const PlaySoundEvent({required this.start});

  @override
  List<Object?> get props => [start];
}