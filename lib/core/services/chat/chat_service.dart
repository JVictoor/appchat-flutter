import 'package:appchat/core/models/chat_massage.dart';
import 'package:appchat/core/models/chat_user.dart';
import 'package:appchat/core/services/chat/chat_mock_service.dart';

abstract class ChatService {
  Stream<List<ChatMessage>> messagesStream();
  Future<ChatMessage> save(String text, ChatUser user);

  factory ChatService() {
    return ChatMockService();
  }
}
