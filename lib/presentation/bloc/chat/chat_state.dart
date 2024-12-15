part of 'chat_bloc.dart';

sealed class ChatState extends Equatable {
  const ChatState();
}

final class ChatInitialState extends ChatState {
  @override
  List<Object> get props => [];
}

final class ChatRecitationState extends ChatState {
  @override
  List<Object> get props => [];
}
