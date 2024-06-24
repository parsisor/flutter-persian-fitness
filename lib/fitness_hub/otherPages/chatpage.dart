// chat_page.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _chatController = TextEditingController();
  final List<Map<String, String>> _messages = [
    {'name': 'ابی', 'text': 'چطور میتونم کمکتون کنم؟'}
  ];
  final ScrollController _scrollController = ScrollController();

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  void _sendMessage() async {
  if (_chatController.text.isNotEmpty) {
    setState(() {
      _messages.add({'name': 'کاربر', 'text': _chatController.text});
    });

    try {
      var response = await http.post(
        Uri.parse('https://fresh-pugs-glow.loca.lt/bodybuilding_plan'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'input_text': _chatController.text}),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        // Ensure the response is parsed as a string
        String message = data is String ? data : data['response'] ?? 'No response';

        setState(() {
          _messages.add({'name': 'ابی', 'text': message});
        });
      } else {
        setState(() {
          _messages.add({'name': 'ابی', 'text': 'Error ${response.statusCode}'});
        });
      }
    } catch (e) {
      print("Error: $e"); // Add this line for debugging
      setState(() {
        _messages.add({'name': 'ابی', 'text': 'Connection error $e'});
      });
    }

    _chatController.clear();
    _scrollToBottom();
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isUser = message['name'] == 'کاربر';
                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: isUser ? Colors.lightBlueAccent : Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      message['text']!,
                      style: TextStyle(color: isUser ? Colors.white : Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _chatController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
